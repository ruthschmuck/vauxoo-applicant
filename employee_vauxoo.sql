-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

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