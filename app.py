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
def data():
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
        connection.close()
        return render_template("data.html", output = output1, columns = cols)
    else:
        return render_template("data.html", output = '')

@app.route("/make_team")
def make_team():
    if "user" not in session:
        return redirect(url_for("index"))
    return render_template("make_team.html")

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

    # get user weapons so far
    cur = connection.cursor()
    cur.execute("SELECT * FROM user_weapon")
    output4 = cur.fetchall()
    cur.close()

    cont = False # able to proceed to characters if there are user weapons
    if len(output4) > 0:
        cont = True 

    if request.method == "POST":
        if request.form["button_id"] == "add": # add selected from navbar
            connection.close()
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output4, mode = "add", proceed = cont)
        elif request.form["button_id"] == "mod": # modify selected from navbar
            connection.close()
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output4, mode = "mod", proceed = cont)
        elif request.form["button_id"] == "del": # delete selected from navbar
            connection.close()
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output4, mode = "del", proceed = cont)
        if request.form["button_id"] == "add user weapon":
            cur = connection.cursor()
            cur.callproc("add_user_weapon", (request.form["weapon"], request.form["refinementlvl"],))
            cur.execute("SELECT * FROM user_weapon")
            output5 = cur.fetchall()
            connection.commit() 
            cur.close()
            connection.close()
            if len(output5) > 0:
                cont = True 
            else:
                cont = False
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output5, mode = "add", proceed = cont)
        elif request.form["button_id"] == "modify user weapon":
            cur = connection.cursor()
            cur.callproc("mod_user_weapon", (request.form["weaponid"], request.form["weapon"], request.form["refinementlvl"],))
            cur.execute("SELECT * FROM user_weapon")
            output5 = cur.fetchall()
            connection.commit() 
            cur.close()
            connection.close()
            if len(output5) > 0:
                cont = True 
            else:
                cont = False
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output5, mode = "mod", proceed = cont)
        elif request.form["button_id"] == "delete user weapon":
            cur = connection.cursor()
            cur.callproc("del_user_weapon", (request.form["weaponid"],))
            cur.execute("SELECT * FROM user_weapon")
            output5 = cur.fetchall()
            connection.commit() 
            cur.close()
            connection.close()
            if len(output5) > 0:
                cont = True 
            else:
                cont = False
            return render_template("weapons.html", 
                weapons = gs_weaponnames, output = output5, mode = "del", proceed = cont)
    else:
        connection.close()
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
    output = cur.fetchall()
    gs_characternames = []
    for row in output:
        gs_characternames.append(row["character_name"])
    cur.close()

    # get user weapons 
    cur = connection.cursor()
    cur.execute("SELECT * FROM user_weapon")
    output4 = cur.fetchall()
    cur.close()

    # get user characters so far
    cur = connection.cursor()
    cur.execute("SELECT * FROM user_character")
    output3 = cur.fetchall()
    cur.close()

    existing_characters=[] # current user character names list 
    for row in output3:
        existing_characters.append(row["character_name"])

    already_equipped=[] # current user equipped weapons 
    for row in output3:
        already_equipped.append(row["weapon_id"])

    cont = False # able to proceed to teams if there are user characters
    if len(output3) > 0:
        cont = True
    if request.method == "POST":
        # navbar handling
        if request.form["button_id"] == "add": # add selected from navbar
            connection.close()
            return render_template("character.html", 
                characters = gs_characternames, weaps = output4, output = output3, mode = "add", proceed = cont, err='')
        elif request.form["button_id"] == "mod": # modify selected from navbar
            connection.close()
            return render_template("character.html", 
                characters = gs_characternames,  weaps = output4, output = output3, mode = "mod", proceed = cont, err='')
        elif request.form["button_id"] == "del": # delete selected from navbar
            connection.close()
            return render_template("character.html", 
                characters = gs_characternames, output = output3, mode = "del", proceed = cont, err='')
        # user data input
        if request.form["button_id"] == "add user character" :
            # check if entered weapon is valid for character
            cur = connection.cursor()
            cur.callproc("weapons_list", (request.form["character"],))
            valid_weapon_ids = []
            rows = cur.fetchall()
            cur.close()
            for row in rows:
                valid_weapon_ids.append(row["weapon_id"])
            cur = connection.cursor()
            selected_id = int(request.form["equipped"])
            selected_char = str(request.form["character"])
            if selected_char in existing_characters: # if character is duplicate
                return render_template("character.html", 
                        characters = gs_characternames, weaps = output4, output = output3, mode = "add", 
                        proceed = cont, err = "duplicate entry not allowed")  
            elif selected_id == -1: # if weapon entered is None
                cur.callproc("add_user_character_null", (selected_char, request.form["constellationlvl"], request.form["talentlvl"],))
            elif selected_id not in valid_weapon_ids: # if weapon is not a valid type
                return render_template("character.html", 
                    characters = gs_characternames, weaps = output4, output = output3, mode = "add", 
                    proceed = cont, err = "character cannot be equipped with this weapon type")
            elif selected_id in already_equipped: # weaon is already equipped
                return render_template("character.html", 
                    characters = gs_characternames, weaps = output4, output = output3, mode = "add", 
                    proceed = cont, err = "weapon equipped on another character")
            else: # character addition is valid
                cur.callproc("add_user_character", (selected_char, request.form["constellationlvl"], request.form["talentlvl"], selected_id,))     
            # get updated user character table
            cur.execute("SELECT * FROM user_character")
            output6 = cur.fetchall()
            connection.commit() 
            cur.close()
            connection.close()
            if len(output6) > 0:
                cont = True 
            else:
                cont = False
            return render_template("character.html", 
                characters = gs_characternames, weaps = output4, output = output6, mode = "add", proceed = cont, err='')
        elif request.form["button_id"] == "modify user character":
            # check if entered weapon is valid for character
            cur = connection.cursor()
            cur.callproc("weapons_list", (request.form["character"],))
            valid_weapon_ids = []
            rows = cur.fetchall()
            cur.close()
            for row in rows:
                valid_weapon_ids.append(row["weapon_id"])
            cur = connection.cursor()
            selected_id = int(request.form["equipped"])
            selected_char = str(request.form["character"])
            if selected_id == -1: # if weapon entered is None
                cur.callproc("mod_user_character_null", (selected_char, request.form["constellationlvl"], request.form["talentlvl"],))
            elif selected_id not in valid_weapon_ids: # if weapon is not a valid type
                return render_template("character.html", 
                    characters = gs_characternames, weaps = output4, output = output3, mode = "mod", 
                    proceed = cont, err = "character cannot be equipped with this weapon type")
            elif selected_id in already_equipped: # weapon is already equipped
                return render_template("character.html", 
                    characters = gs_characternames, weaps = output4, output = output3, mode = "mod", 
                    proceed = cont, err = "weapon equipped on another character")
            else: # character modification is valid
                cur.callproc("mod_user_character", (selected_char, request.form["constellationlvl"], request.form["talentlvl"], selected_id,))     
            # get updated user character table
            cur.execute("SELECT * FROM user_character")
            output6 = cur.fetchall()
            connection.commit() 
            cur.close()
            connection.close()
            if len(output6) > 0:
                cont = True 
            else:
                cont = False
            return render_template("character.html", 
                characters = gs_characternames, weaps = output4, output = output6, mode = "mod", proceed = cont, err='')
        elif request.form["button_id"] == "delete user character":
            cur = connection.cursor()
            cur.callproc("del_user_character", (request.form["character"],))
            cur.execute("SELECT * FROM user_character")
            output5 = cur.fetchall()
            connection.commit() 
            cur.close()
            connection.close()
            if len(output5) > 0:
                cont = True 
            else:
                cont = False
            return render_template("character.html", 
                characters = gs_characternames, weaps = output4, output = output5, mode = "del", proceed = cont, err='')
    else:
        connection.close()
        return render_template("character.html", 
                characters = gs_characternames, weaps = output4, output = output3, mode = "add", proceed = cont, err='')

@app.route("/teams", methods=['POST', 'GET'])
def enter_teams():
    if "user" not in session:
        return redirect(url_for("index"))
    connection = pymysql.connect(host='localhost', user=session["user"], password=session["pw"],
                db='genshin', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)

    # get user character names
    cur = connection.cursor()
    cur.execute("SELECT character_name FROM user_character")
    output = cur.fetchall()
    user_characternames = []
    for row in output:
        user_characternames.append(row["character_name"])
    cur.close()

    # get user team so far
    cur = connection.cursor()
    cur.execute("SELECT * FROM user_team")
    output7 = cur.fetchall()
    cur.close()

    if request.method == "POST":
        # navbar handling
        if request.form["button_id"] == "add": # add selected from navbar
            connection.close()
            return render_template("team.html", 
                u_characters = user_characternames, output = output7, mode = "add", err='')
        elif request.form["button_id"] == "mod": # modify selected from navbar
            connection.close()
            return render_template("team.html", 
                u_characters = user_characternames, output = output7, mode = "mod", err='')
        elif request.form["button_id"] == "del": # delete selected from navbar
            connection.close()
            return render_template("team.html", 
                u_characters = user_characternames, output = output7, mode = "del", err='')
    else:
        connection.close()
        return render_template("team.html", 
                u_characters = user_characternames, output = output7, mode = "add", err='')
    


if __name__ == "__main__":
    app.run(debug=True)

