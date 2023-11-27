"creating the database"

CREATE DATABASE SwimmerApp;

CREATE TABLE Swimmers(swimmer_ID INT NOT NULL AUTO_INCREMENT,
swimmer_name VARCHAR(255), swimmer_age INT, PRIMARY KEY swimmer_ID);

CREATE TABLE events(event_ID INT NOT NULL AUTO_INCREMENT,
event_distance VARCHAR(255),event_stroke VARCHAR(255),PRIMARY KEY (event_ID));

CREATE TABLE times(swimmer_ID INT not null,event_ID INT not null,
recorded_time varchar(255),ts timestamp);


