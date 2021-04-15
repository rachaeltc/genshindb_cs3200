from flask import Flask, redirect, url_for, render_template, request, session
import pymysql

app = Flask(__name__)
app.secret_key = "genshindb"

@app.route("/", methods=['POST', 'GET'])
def index():
    if request.method == "POST":
        try:
            session["user"] = request.form["user"]
            session["pw"] = request.form["pw"]
            connection = pymysql.connect(host='localhost', user=session["user"], password=session["pw"],
                db='genshin', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
        except pymysql.err.OperationalError:
            return render_template("index.html", error = "Wrong credentials. Try again!")
        else:
            connection.close()
            return redirect(url_for("home"))
    else:
        return render_template("index.html")

@app.route("/home")
def home():
    if "user" not in session:
        return redirect(url_for("index"))
    return render_template("home.html")

@app.route("/logout")
def logout():
    session.pop("user")
    session.pop("pw")
    return redirect(url_for("index"))

@app.route("/data", methods=['POST', 'GET'])
def data(connection):
    if "user" not in session:
        return redirect(url_for("index"))
    connection = pymysql.connect(host='localhost', user=session["user"], password=session["pw"],
                db='genshin', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
    if request.method == "POST":
        tbl = request.form["table"]
        cur = connection.cursor()
        query = "SELECT " + tbl 
        cur.execute(query)
        output1 = cur.fetchall()
        cols = []
        for row in output1[0]:
            cols.append(row)
        cur.close()
        #close connection
        return render_template("data.html", output = output1, columns = cols)
    else:
        return render_template("data.html", output = '')

@app.route("/make_team")
def make_team():
    if "user" not in session:
        return redirect(url_for("index"))
    connection = pymysql.connect(host='localhost', user=session["user"], password=session["pw"],
                db='genshin', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
    return render_template("team.html")

@app.route("/weapons", methods=['POST', 'GET'])
def enter_weapons():
    if "user" not in session:
        return redirect(url_for("index"))
    connection = pymysql.connect(host='localhost', user=session["user"], password=session["pw"],
                db='genshin', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
    # get weapon names
    cur = connection.cursor()
    cur.execute("SELECT weapon_name FROM gs_weapon")
    output2 = cur.fetchall()
    gs_weaponnames = []
    for row in output2:
        gs_weaponnames.append(row["weapon_name"])
    cur.close()

    cur = connection.cursor()
    cur.execute("SELECT * FROM user_weapon")
    output4 = cur.fetchall()
    cur.close()

    cont = False
    if len(output4) > 0:
        cont = True 

    if request.method == "POST":
        if request.form["button_id"] == "add":
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output4, mode = "add", proceed = cont)
        elif request.form["button_id"] == "mod":
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output4, mode = "mod", proceed = cont)
        elif request.form["button_id"] == "del":
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output4, mode = "del", proceed = cont)
        if request.form["button_id"] == "add user weapon":
            cur = connection.cursor()
            cur.callproc("add_user_weapon", (request.form["weapon"], request.form["refinementlvl"],))
            cur.execute("SELECT * FROM user_weapon")
            output5 = cur.fetchall()
            connection.commit() 
            cur.close()
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output5, mode = "add", proceed = cont)
        elif request.form["button_id"] == "modify user weapon":
            cur = connection.cursor()
            cur.callproc("mod_user_weapon", (request.form["weaponid"], request.form["weapon"], request.form["refinementlvl"],))
            cur.execute("SELECT * FROM user_weapon")
            output5 = cur.fetchall()
            connection.commit() 
            cur.close()
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output5, mode = "mod", proceed = cont)
        elif request.form["button_id"] == "delete user weapon":
            cur = connection.cursor()
            cur.callproc("del_user_weapon", (request.form["weaponid"],))
            cur.execute("SELECT * FROM user_weapon")
            output5 = cur.fetchall()
            connection.commit() 
            cur.close()
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output5, mode = "del", proceed = cont)
    else:
        return render_template("weapons.html", 
        weapons = gs_weaponnames, output = output4, mode = "add", proceed = cont)

@app.route("/characters", methods=['POST', 'GET'])
def enter_characters():
    if "user" not in session:
        return redirect(url_for("index"))
        
    connection = pymysql.connect(host='localhost', user=session["user"], password=session["pw"],
                db='genshin', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)

    # get character names
    cur = connection.cursor()
    cur.execute("SELECT character_name FROM gs_character")
    output3 = cur.fetchall()
    gs_characternames = []
    for row in output3:
        gs_characternames.append(row["character_name"])
    cur.close()

    return render_template("character.html")


if __name__ == "__main__":
    app.run(debug=True)

