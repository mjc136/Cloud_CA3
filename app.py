from flask import Flask, render_template, request, session  # from module import Class.

import DBcm

import hfpy_utils  # created by Paul Barry
import swim_utils  # created by Paul Barry

from datetime import datetime, timedelta

import platform


if "aws" in platform.uname().release:
    config = {
        "user": "C00261635",
        "password": "swimpasswd",
        "database": "C00261635$default",
        "host": "C00261635.mysql.pythonanywhere-services.com",
        }
else:
        config = {
        "user": "root",
        "password": "swim",
        "database": "SwimmerApp",
        "host": "localhost",
        }   

app = Flask(__name__)
app.secret_key = "SecretKey"


@app.get("/")
@app.get("/getSession")
def get_session(): # get all sessions

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
def get_swimmers_names():  # get all swimmers from a session
    session["sessionDate"] = request.form["date"]
    dateChosenString = session["sessionDate"]
    dateChosen = datetime.strptime(dateChosenString, "%Y-%m-%d")
    
    with DBcm.UseDatabase(config) as db:
        SQL = """SELECT DISTINCT swimmer_id FROM times 
                    WHERE ts >= %s AND ts < %s"""
        next_day = dateChosen + timedelta(days=1)
        db.execute(SQL, (dateChosen, next_day))
        swimmer_ids = db.fetchall()

        swimmers = []

        for id in swimmer_ids:
            SQL = """SELECT swimmer_name, swimmer_age FROM swimmers WHERE swimmer_id = %s"""
            db.execute(SQL, id)
            swimmer = db.fetchone()
            swimmers.append(swimmer)

    return render_template(
        "selectSwimmer.html",
        title="Select a swimmer to chart",
        data=swimmers,
    )


@app.post("/displayevents")
def list_swimmer_events():  # get all events from a swimmer

    dateChosenString = session["sessionDate"]
    dateChosen = datetime.strptime(dateChosenString, "%Y-%m-%d")
    next_day = dateChosen + timedelta(days=1)

    session["swimmer"] = request.form["swimmer"]
    selected_swimmer = session["swimmer"]
    swimmerName, swimmerAge = selected_swimmer.split('-')
    session["swimmerName"] = swimmerName
    session["swimmerAge"] = swimmerAge

    swimmers_event = []

    with DBcm.UseDatabase(config) as db:
        SQL = """SELECT swimmer_id FROM swimmers WHERE swimmer_name = %s AND swimmer_age = %s"""
        db.execute(SQL, (swimmerName,int(swimmerAge)))
        swimmer_id = db.fetchone()

        SQL = """SELECT DISTINCT event_id FROM times WHERE swimmer_id = %s
                AND ts >= %s AND ts < %s"""
        db.execute(SQL, (swimmer_id[0], dateChosen, next_day))
        event_ids = db.fetchall()
        
        for id in event_ids:

            SQL = """SELECT event_distance, event_stroke FROM events WHERE event_id = %s"""
            db.execute(SQL, id)
            event = db.fetchone()

            swimmers_event.append(event)

    return render_template(
        "selectEvent.html",
        title="Select a swimmers event to chart",
        name= swimmerName + " " + swimmerAge,
        data=swimmers_event,
    )


@app.post("/chart")
def display_chart():
    swimmerName = session["swimmerName"]
    swimmerAge = int(session["swimmerAge"]) 

    selected_event = request.form["event"]
    eventDistance, eventStroke = selected_event.split('-')

    dateChosenString = session["sessionDate"]
    dateChosen = datetime.strptime(dateChosenString, "%Y-%m-%d")
    next_day = dateChosen + timedelta(days=1)

    with DBcm.UseDatabase(config) as db:
        SQL = """SELECT swimmer_id FROM swimmers WHERE swimmer_name = %s AND swimmer_age = %s"""
        db.execute(SQL, (swimmerName,swimmerAge))
        swimmer_id = db.fetchone()

        SQL = """SELECT event_id FROM events WHERE event_distance = %s AND event_stroke = %s"""
        db.execute(SQL, (eventDistance,eventStroke))
        event_id = db.fetchone()

        SQL = """SELECT recorded_time FROM times WHERE swimmer_id = %s AND event_id = %s
                AND ts >= %s AND ts < %s"""
        db.execute(SQL, (swimmer_id[0], event_id[0], dateChosen, next_day))
        times = db.fetchall()

        converts = []

        from statistics import mean

        for time in times:
            converts.append(swim_utils.convert2hundreths(time[0]))
            the_average = swim_utils.build_time_string(mean(converts))
                

        the_title = f"{swimmerName} (Under {swimmerAge}) {eventDistance} {eventStroke}"
        from_max = max(converts) + 50
        the_converts = [hfpy_utils.convert2range(n, 0, from_max, 0, 350) for n in converts]

        the_data = zip(reversed(the_converts), reversed(times))

        return render_template(
            "chart.html",
            title=the_title,
            average=the_average,
            data=the_data,
        )


if __name__ == "__main__":
    app.run(debug=True)  
