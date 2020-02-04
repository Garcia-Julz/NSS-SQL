-- DROP TABLE IF EXISTS Superhero;
-- DROP TABLE IF EXISTS Affiliation;
-- CREATE TABLE 'Affiliation' (
--     'Affiliation_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--     'Name' TEXT NOT NULL
-- );
-- CREATE TABLE 'Superhero' (
--     'Superhero_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--     'Name' TEXT NOT NULL,
--     'Gender' TEXT NOT NULL,
--     'AKA' TEXT NOT NULL,
--     'Affiliation_Id' INTEGER,
--     FOREIGN KEY('Affiliation_Id') REFERENCES 'Affiliation'('Affiliation_Id')
-- );
-- INSERT INTO Affiliation VALUES (null, 'Justice League');
-- INSERT INTO Affiliation VALUES (null, 'X-Men');
-- INSERT INTO Superhero
--     SELECT null, 'Super Dude', 'M', 'Bubba Farlo', Affiliation_Id
--     FROM Affiliation
--     WHERE Name = 'Justice League';
-- SELECT * FROM Affiliation;


DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS current_exercise;
DROP TABLE IF EXISTS exercise;
DROP TABLE IF EXISTS instructor;
DROP TABLE IF EXISTS cohort;

CREATE TABLE 'student' (
    'Student_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'frst_name' TEXT NOT NULL,
    'last_name' TEXT NOT NULL,
    'slack_handle' TEXT NOT NULL,
    'cohort' INTEGER
--     FOREIGN KEY('Student_Id') REFERENCES 'Affiliation'('Student_Id')
);

CREATE TABLE 'instructor' (
    'instructor_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'frst_name' TEXT NOT NULL,
    'last_name' TEXT NOT NULL,
    'slack_handle' TEXT NOT NULL,
    'cohort' INTEGER,
    'instructor_specialty' TEXT NOT NULL  
--     FOREIGN KEY('Student_Id') REFERENCES 'Affiliation'('Student_Id')
);

CREATE TABLE 'cohort' (
    'Student_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'name' TEXT NOT NULL
--     FOREIGN KEY('Student_Id') REFERENCES 'Affiliation'('Student_Id')
);

CREATE TABLE 'exercise' (
    'Student_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'name' TEXT NOT NULL,
    'language' TEXT NOT NULL
--     FOREIGN KEY('Student_Id') REFERENCES 'Affiliation'('Student_Id')
);

CREATE TABLE 'current_exercise' (
    'current_exercise_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'exercise_Id'  INTEGER,
    'instructor_Id'  INTEGER,
    'student_Id'  INTEGER
--     FOREIGN KEY('Student_Id') REFERENCES 'Affiliation'('Student_Id')
);
