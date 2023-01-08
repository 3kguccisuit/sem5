CREATE TABLE classroom (
 room_id SERIAL NOT NULL,
 description VARCHAR(2000)
);

ALTER TABLE classroom ADD CONSTRAINT PK_classroom PRIMARY KEY (room_id);


CREATE TABLE instructor (
 instructor_id SERIAL NOT NULL,
 personal_number VARCHAR(500) NOT NULL UNIQUE,
 name VARCHAR(500),
 teach_ensembles BOOLEAN,
 adress VARCHAR(500),
 city VARCHAR(500),
 zip VARCHAR(500),
 phone_number VARCHAR(500),
 email VARCHAR(500)
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE instrument (
 id SERIAL NOT NULL,
 type VARCHAR(500)
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);


CREATE TABLE instruments (
 instrument_id SERIAL NOT NULL,
 type VARCHAR(500) NOT NULL,
 brand VARCHAR(500),
);

ALTER TABLE instruments ADD CONSTRAINT PK_instruments PRIMARY KEY (instrument_id);


CREATE TABLE price_type (
 price_type_id SERIAL NOT NULL,
 skill_level INT,
 lesson_type INT,
 salary INT,
 discount INT,
 type VARCHAR(500)
);

ALTER TABLE price_type ADD CONSTRAINT PK_price_type PRIMARY KEY (price_type_id);


CREATE TABLE student (
 student_id SERIAL NOT NULL,
 personal_number VARCHAR(12) NOT NULL UNIQUE,
 name VARCHAR(500),
 adress VARCHAR(500),
 city VARCHAR(500),
 zip VARCHAR(500)
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);


CREATE TABLE student_email (
 email VARCHAR(500) NOT NULL,
 student_id SERIAL NOT NULL
);

ALTER TABLE student_email ADD CONSTRAINT PK_student_email PRIMARY KEY (email,student_id);


CREATE TABLE student_phone (
 phone_number VARCHAR(100) NOT NULL,
 student_id SERIAL NOT NULL
);

ALTER TABLE student_phone ADD CONSTRAINT PK_student_phone PRIMARY KEY (phone_number,student_id);


CREATE TABLE teacher_instrument (
 instructor_id SERIAL NOT NULL,
 id SERIAL NOT NULL
);

ALTER TABLE teacher_instrument ADD CONSTRAINT PK_teacher_instrument PRIMARY KEY (instructor_id,id);


CREATE TABLE lesson (
 lesson_id SERIAL NOT NULL,
 instructor_id INT NOT NULL,
 room_id INT,
 price_type_id INT NOT NULL,
 skill_level VARCHAR(500),
 lesson_type VARCHAR(500),
 instrument_type  VARCHAR(500),
 genre VARCHAR(500),
 max_students INT,
 min_students INT,
 time TIMESTAMP(6) NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);


CREATE TABLE parent_email (
 email VARCHAR(500) NOT NULL,
 student_id SERIAL NOT NULL
);

ALTER TABLE parent_email ADD CONSTRAINT PK_parent_email PRIMARY KEY (email,student_id);


CREATE TABLE parent_phone (
 phone_number VARCHAR(100) NOT NULL,
 student_id SERIAL NOT NULL
);

ALTER TABLE parent_phone ADD CONSTRAINT PK_parent_phone PRIMARY KEY (phone_number,student_id);


CREATE TABLE renting_instruments (
 rental_id SERIAL NOT NULL,
 instrument_id INT NOT NULL,
 student_id INT NOT NULL,
 rental_time TIMESTAMP(6) NOT NULL,
 price INT 
);

ALTER TABLE renting_instruments ADD CONSTRAINT PK_renting_instruments PRIMARY KEY (rental_id);


CREATE TABLE sibling (
 student_id1 SERIAL NOT NULL,
 student_id2 SERIAL NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (student_id1,student_id2);


CREATE TABLE student_lesson (
 student_id SERIAL NOT NULL,
 lesson_id SERIAL NOT NULL
);

ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id,lesson_id);


ALTER TABLE student_email ADD CONSTRAINT FK_student_email_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;


ALTER TABLE student_phone ADD CONSTRAINT FK_student_phone_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;


ALTER TABLE teacher_instrument ADD CONSTRAINT FK_teacher_instrument_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE CASCADE;
ALTER TABLE teacher_instrument ADD CONSTRAINT FK_teacher_instrument_1 FOREIGN KEY (id) REFERENCES instrument (id) ON DELETE CASCADE;


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE NO ACTION;
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (room_id) REFERENCES classroom (room_id) ON DELETE SET NULL;
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_2 FOREIGN KEY (price_type_id) REFERENCES price_type (price_type_id) ON DELETE NO ACTION;


ALTER TABLE parent_email ADD CONSTRAINT FK_parent_email_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;


ALTER TABLE parent_phone ADD CONSTRAINT FK_parent_phone_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;


ALTER TABLE renting_instruments ADD CONSTRAINT FK_renting_instruments_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE NO ACTION;
ALTER TABLE renting_instruments ADD CONSTRAINT FK_renting_instruments_1 FOREIGN KEY (instrument_id) REFERENCES instruments (instrument_id) ON DELETE NO ACTION;


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id1) REFERENCES student (student_id) ON DELETE CASCADE;
ALTER TABLE sibling ADD CONSTRAINT FK_sibling_1 FOREIGN KEY (student_id2) REFERENCES student (student_id) ON DELETE CASCADE;


ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;
ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id) ON DELETE CASCADE;


