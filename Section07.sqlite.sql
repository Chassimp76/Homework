BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Subjects" (
	"SubjectId"	INTEGER,
	"SubjectName"	TEXT,
	"DepartmentID"	INTEGER,
	PRIMARY KEY("SubjectId")
);
CREATE TABLE IF NOT EXISTS "Students" (
	"StudentId"	INTEGER,
	"StudentName"	INTEGER,
	PRIMARY KEY("StudentId")
);
CREATE TABLE IF NOT EXISTS "Grades" (
	"StudentId"	INTEGER NOT NULL,
	"SubjectId"	INTEGER,
	"Grade"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Departments" (
	"DepartmentNm"	TEXT,
	"DepartmentId"	INTEGER
);
INSERT INTO "Subjects" VALUES (1,'Python',1);
INSERT INTO "Subjects" VALUES (2,'Tableau',1);
INSERT INTO "Subjects" VALUES (3,'Painting',2);
INSERT INTO "Subjects" VALUES (4,'Spanish for Travelers',3);
INSERT INTO "Subjects" VALUES (5,'Spanish 200',3);
INSERT INTO "Subjects" VALUES (6,'NASA during the Shuttle Era',4);
INSERT INTO "Subjects" VALUES (7,'Chemistry',5);
INSERT INTO "Subjects" VALUES (8,'Biology',5);
INSERT INTO "Subjects" VALUES (9,'Jazzz',6);
INSERT INTO "Subjects" VALUES (10,'Independent Study',7);
INSERT INTO "Students" VALUES (1,'Sarah');
INSERT INTO "Students" VALUES (2,'Maria');
INSERT INTO "Students" VALUES (3,'Brandon');
INSERT INTO "Students" VALUES (4,'Steve');
INSERT INTO "Students" VALUES (5,'Ronnie');
INSERT INTO "Students" VALUES (6,'Matthew');
INSERT INTO "Students" VALUES (7,'Mariah');
INSERT INTO "Students" VALUES (8,'Ray');
INSERT INTO "Students" VALUES (9,'Brandi');
INSERT INTO "Students" VALUES (10,'Hunter');
INSERT INTO "Students" VALUES (11,'Sophia');
INSERT INTO "Grades" VALUES (1,1,85);
INSERT INTO "Grades" VALUES (1,3,90);
INSERT INTO "Grades" VALUES (1,6,78);
INSERT INTO "Grades" VALUES (2,2,99);
INSERT INTO "Grades" VALUES (2,4,87);
INSERT INTO "Grades" VALUES (2,7,77);
INSERT INTO "Grades" VALUES (3,1,NULL);
INSERT INTO "Grades" VALUES (3,2,NULL);
INSERT INTO "Grades" VALUES (4,3,NULL);
INSERT INTO "Grades" VALUES (4,4,NULL);
INSERT INTO "Grades" VALUES (4,10,NULL);
INSERT INTO "Departments" VALUES ('IT',1);
INSERT INTO "Departments" VALUES ('Arts',2);
INSERT INTO "Departments" VALUES ('Spanish',3);
INSERT INTO "Departments" VALUES ('History',4);
INSERT INTO "Departments" VALUES ('Science',5);
INSERT INTO "Departments" VALUES ('Band',6);
INSERT INTO "Departments" VALUES ('StudyHall',7);
COMMIT;
