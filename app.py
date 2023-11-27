from flask import Flask, render_template, request, session  # from module import Class.


import os
import DBcm

import hfpy_utils  # created by Paul Barry
import swim_utils  # created by Paul Barry
import my_utils
from datetime import datetime

config = {
    "user": "root",
    "password": "swim",
    "database": "SwimmerApp",
    "host": "localhost",
}

FOLDER = r"swimdata/"

app = Flask(__name__)
app.secret_key = "SecretKey"


@app.get("/")
@app.get("/getSession")
def get_session():

    with DBcm.UseDatabase(config) as db:
        SQL = """SELECT DISTINCT ts FROM times"""
        db.execute(SQL)
        timestamps = db.fetchall()

    dates = []

    for ts in timestamps:
        if ts[0].strftime("%Y-%m-%d") not in dates:
            dates.append(ts[0].strftime("%Y-%m-%d"))
    print(dates)
    
    return render_template(
        "selectSession.html", 
        title="Select a training session",
        data=dates
        )


@app.post("/getswimmers")
def get_swimmers_names():
    session["sessionDate"] = request.form["date"]
    dateChosenString = session["sessionDate"]
    dateChosen = datetime.strptime(dateChosenString, "%Y-%m-%d")
    
    with DBcm.UseDatabase(config) as db:
        SQL = """SELECT DISTINCT swimmer_id FROM times WHERE ts = %s"""
        db.execute(SQL, dateChosen)
        swimmer_ids = db.fetchall()

        for id in swimmer_ids:
            SQL = """SELECT swimmer_name FROM swimmers WHERE swimmer_id = %s"""
            db.execute(SQL, (id))
            names = db.fetchall()

    return render_template(
        "selectSwimmer.html",
        title="Select a swimmer to chart",
        data=names,
    )


@app.post("/displayevents")
def list_swimmer_events():  # get all events from a swimmer
    session["SwimmerName"] = request.form["swimmer"]  # get result of select swimmer
    swimmers_event = set()

    for filename in os.listdir(FOLDER):
        result = swim_utils.get_swimmers_data(filename)
        event = result[2] + " " + result[3]  # split event and stroke

        if session["SwimmerName"] == result[0]:
            swimmers_event.add(event)

    return render_template(
        "selectEvent.html",
        title="Select a swimmers event to chart",
        data=swimmers_event,
    )


@app.post("/chart")
def display_chart():
    event = request.form["event"]  # get result of select event
    event = event.split(" ")
    event = event[0] + "-" + event[1]  # format event to match filename

    for filename in os.listdir(FOLDER):
        result = swim_utils.get_swimmers_data(filename)

        if (
            session["SwimmerName"] == result[0]
            and session["SwimmerName"] + "-"
            and event in filename
        ):
            (
                name,
                age,
                distance,
                stroke,
                the_times,
                converts,
                the_average,
            ) = swim_utils.get_swimmers_data(
                f"{session['SwimmerName']}-{result[1]}-{result[2]}-{result[3]}.txt"
            )

    the_title = f"{name} (Under {age}) {distance} {stroke}"
    from_max = max(converts) + 50
    the_converts = [hfpy_utils.convert2range(n, 0, from_max, 0, 350) for n in converts]

    the_data = zip(reversed(the_converts), reversed(the_times))

    return render_template(
        "chart.html",
        title=the_title,
        average=the_average,
        data=the_data,
    )


if __name__ == "__main__":
    app.run(debug=True)  # Starts a local (test) webserver, and waits... forever.
