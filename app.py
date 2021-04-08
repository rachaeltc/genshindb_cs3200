from flask import Flask, redirect, url_for, render_template, request
import pymysql

app = Flask(__name__)

connection = pymysql.connect(host='localhost', user='root', password='SQLchael324!',
        db='genshin', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/data", methods=['POST', 'GET'])
def data():
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
        return render_template("data.html", output = output1, columns = cols)
    else:
        return render_template("data.html", output = '')

@app.route("/make_team", methods=['POST', 'GET'])
def make_team():
    # get weapon names
    cur = connection.cursor()
    cur.execute("SELECT weapon_name FROM gs_weapon")
    output2 = cur.fetchall()
    gs_weaponnames = []
    for row in output2:
        gs_weaponnames.append(row["weapon_name"])
    cur.close()

    # get character names
    cur = connection.cursor()
    cur.execute("SELECT character_name FROM gs_character")
    output3 = cur.fetchall()
    gs_characternames = []
    for row in output3:
        gs_characternames.append(row["character_name"])
    cur.close()

    cur = connection.cursor()
    cur.execute("SELECT * FROM user_weapon")
    output4 = cur.fetchall()
    cur.close()

    if request.method == "POST":
        cur = connection.cursor()
        cur.callproc("add_user_weapon", (request.form["weapon"], request.form["refinementlvl"],))
        cur.close()
        cur = connection.cursor()
        cur.execute("SELECT * FROM user_weapon")
        output5 = cur.fetchall()
        cur.close()
        return render_template("team.html", 
            weapons = gs_weaponnames, characters = gs_characternames, output = output5)
    else:
        return render_template("team.html", weapons = gs_weaponnames, characters = gs_characternames, output = output4)

if __name__ == "__main__":
    app.run(debug=True)

connection.close()