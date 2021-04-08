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
        query = "SELECT * FROM " + tbl 
        cur.execute(query)
        output2 = cur.fetchall()
        cols = []
        for row in output2[0]:
            cols.append(row)
        cur.close()
        return render_template("data.html", output = output2, columns = cols)
    return render_template("data.html", output = '')

@app.route("/make_team")
def make_team():
    return "make team page"

if __name__ == "__main__":
    app.run(debug=True)

connection.close()