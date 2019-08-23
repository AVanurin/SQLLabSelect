
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS tutors;
DROP TABLE IF EXISTS marks;

CREATE TABLE students (
	id INTEGER PRIMARY KEY,
	name TEXT UNIQUE NOT NULL,
	telephone CHARACTER(11),
	email TEXT
);

CREATE TABLE tutors (
	id INTEGER PRIMARY KEY,
	name TEXT UNIQUE NOT NULL,
	class TEXT CHECK(class IN ("Биология","Математика","Литература","История")) NOT NULL,
	telephone CHARACTER(11),
	email TEXT
);

CREATE TABLE marks (
	student_id INTEGER,
	tutors_id INTEGER,
	mark INTEGER CHECK(mark BETWEEN 1 and 6) NOT NULL,
	class_date TEXT,
	FOREIGN KEY(student_id) REFERENCES students(id),
	FOREIGN KEY(tutors_id) REFERENCES tutors(id)
);

INSERT INTO students (id, name, telephone, email) VALUES (0, "Мария Петрова", "9857152022", "PetrovaM@gmail.com");
INSERT INTO students (id, name, telephone) VALUES (1, "Иван Нестеров", "9865179933");
INSERT INTO students (id, name, email) VALUES (2, "Ольга Золоторева", "ZolotorOlga@gmail.com");
INSERT INTO students (id, name, telephone, email) VALUES (3, "Олег Рехьянов", "9155643247", "Rerch@rambler.ru");

INSERT INTO tutors (id, name, class, telephone) VALUES (0, "Жанна Артынова", "Математика", "9143102324");
INSERT INTO tutors (id, name, class, telephone) VALUES (1, "Наталья Иванова", "История", "9677899009");
INSERT INTO tutors (id, name, class, telephone) VALUES (2, "Галина Ларионова", "Биология", "9757899009");
INSERT INTO tutors (id, name, class, telephone, email) VALUES (3, "Элионора Сидоровна", "Литература", "9404019019", "Sidorovna1967@mail.ru");

INSERT INTO marks VALUES (0, 1, 5, '1.06');
INSERT INTO marks VALUES (1, 1, 5, '1.06');
INSERT INTO marks VALUES (3, 1, 4, '1.06');
INSERT INTO marks VALUES (0, 2, 5, '1.06');
INSERT INTO marks VALUES (2, 2, 2, '1.06');

INSERT INTO marks VALUES (1, 3, 5, '2.06');
INSERT INTO marks VALUES (2, 3, 3, '2.06');
INSERT INTO marks VALUES (3, 3, 3, '2.06');
INSERT INTO marks VALUES (0, 4, 4, '2.06');
INSERT INTO marks VALUES (1, 0, 3, '2.06');
INSERT INTO marks VALUES (2, 0, 2, '2.06');
INSERT INTO marks VALUES (3, 0, 2, '2.06');

INSERT INTO marks VALUES (0, 1, 4, '3.06');
INSERT INTO marks VALUES (1, 1, 3, '3.06');
INSERT INTO marks VALUES (0, 1, 5, '3.06');
INSERT INTO marks VALUES (3, 3, 2, '3.06');

INSERT INTO marks VALUES (0, 2, 5, '4.06');
INSERT INTO marks VALUES (1, 2, 4, '4.06');
INSERT INTO marks VALUES (4, 0, 3, '4.06');
INSERT INTO marks VALUES (1, 0, 3, '4.06');
INSERT INTO marks VALUES (2, 0, 3, '4.06');

INSERT INTO marks VALUES (0, 0, 5, '5.06');
INSERT INTO marks VALUES (1, 0, 2, '5.06');
INSERT INTO marks VALUES (2, 0, 5, '5.06');
INSERT INTO marks VALUES (3, 0, 4, '5.06');
INSERT INTO marks VALUES (0, 1, 5, '5.06');
INSERT INTO marks VALUES (1, 1, 4, '5.06');
INSERT INTO marks VALUES (2, 1, 4, '5.06');
INSERT INTO marks VALUES (3, 1, 4, '5.06');
INSERT INTO marks VALUES (0, 2, 5, '5.06');
INSERT INTO marks VALUES (1, 2, 5, '5.06');
INSERT INTO marks VALUES (2, 2, 5, '5.06');
INSERT INTO marks VALUES (3, 2, 5, '5.06');
INSERT INTO marks VALUES (0, 3, 4, '5.06');
INSERT INTO marks VALUES (1, 3, 5, '5.06');
INSERT INTO marks VALUES (2, 3, 3, '5.06');
INSERT INTO marks VALUES (3, 3, 2, '5.06');
