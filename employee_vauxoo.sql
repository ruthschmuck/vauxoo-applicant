-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

----------------sql1----------------------------
CREATE TABLE employee_department (
    id integer NOT NULL,
    name varchar(30) NOT NULL,
    description varchar(100),
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id integer NOT NULL,
    first_name varchar(10) NOT NULL,
    last_name varchar(10) NOT NULL,
    departament_id integer NOT NULL, 
    PRIMARY KEY (id),
    FOREIGN KEY (departament_id) REFERENCES employee_department (id) ON DELETE CASCADE ON UPDATE CASCADE
);

---------------sql2-----------------------------------
CREATE TABLE employee_hobby (
    id integer NOT NULL,
    name varchar(50) NOT NULL,
    description varchar(100),
    PRIMARY KEY (id)
);

CREATE TABLE employee_hobby_relation (
    employee_id integer,
    hobby_id integer,
    PRIMARY KEY (employee_id,hobby_id),
    FOREIGN KEY (employee_id) REFERENCES employee (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (hobby_id) REFERENCES employee_hobby (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insertions
INSERT INTO employee_department VALUES (1, 'Computing', 'Computing Departamet');
INSERT INTO employee_department VALUES (2, 'Human Resources', 'Human Resources Departamet');
INSERT INTO employee_department VALUES (3, 'Network', 'Network Departamet');
INSERT INTO employee_department VALUES (4, 'Customer Support', 'Customer Support Departamet');
INSERT INTO employee_department VALUES (5, 'Finance', 'Finance Departamet');
INSERT INTO employee_department VALUES (6, 'Marketing', 'Marketing Departamet');

INSERT INTO employee VALUES (1, 'Antoni', 'Ruth', '1');
INSERT INTO employee VALUES (2, 'Jesus', 'Perez', '2');
INSERT INTO employee VALUES (3, 'Maria', 'Gonzales', '3');
INSERT INTO employee VALUES (4, 'Juan', 'Garcia', '4');

INSERT INTO employee_hobby VALUES (1, 'football', 'Play football');
INSERT INTO employee_hobby VALUES (2, 'BaseBall', 'Play BaseBall');
INSERT INTO employee_hobby VALUES (3, 'Tennis', 'Play Tennis');

--Antoni Ruth's hobby is to play football and baseball
INSERT INTO employee_hobby_relation VALUES (1, 1);
INSERT INTO employee_hobby_relation VALUES (1, 2);
--Jesus Perez's hobby is to play baseball and tennis
INSERT INTO employee_hobby_relation VALUES (2, 2);
INSERT INTO employee_hobby_relation VALUES (2, 3);
-- Maria Gonzales's hobby is play football and tennis
INSERT INTO employee_hobby_relation VALUES (3, 1);
INSERT INTO employee_hobby_relation VALUES (3, 3);
-- Juan Garcia's hobby is play tennis and football
INSERT INTO employee_hobby_relation VALUES (4, 3);
INSERT INTO employee_hobby_relation VALUES (4, 1);