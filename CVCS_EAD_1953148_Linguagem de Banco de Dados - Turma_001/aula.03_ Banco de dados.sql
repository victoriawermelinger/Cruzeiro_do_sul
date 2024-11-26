CREATE TABLE pais
(
cd_pais numeric (2),
nm_pais char (45),
ds_nacionalidade char(35),
dt_inclusão date, 
constraint pais_cd_pais_pk primary key (cd_pais),
constraint pais_nm_pais_uk unique(nm_pais)
)

INSERT INTO pais (cd_pais, nm_pais) VALUES (1,'Brasil') -- 

DELETE FROM pais WHERE cd_pais = 1 --Deletar para colocar inforamções corretas 

INSERT INTO pais (cd_pais, nm_pais, ds_nacionalidade) VALUES (1, 'Brasil', 'Brasileira')

INSERT INTO pais (cd_pais, nm_pais, ds_nacionalidade, dt_inclusão)
VALUES (2, 'Argentina', null, to_date('28/11/2024', 'dd/mm/yyyy'))

INSERT INTO pais VALUES (3, 'chile', 'chilena', CURRENT_DATE)

INSERT INTO pais (nm_pais, dt_inclusão, ds_nacionalidade, cd_pais)
VALUES ('EUA', to_date('24/02/2017', 'dd/mm/yyyy'), 'Americana', 4)

select * from pais 

UPDATE pais 
set nm_pais = 'Portugal', 
	ds_nacionalidade = 'Portuguesa'
WHERE cd_pais = 2

delete from pais where cd_pais = 1

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,        -- ID auto incrementado
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    salary NUMERIC(10, 2) NOT NULL,
    annual_salary NUMERIC(12, 2) GENERATED ALWAYS AS (salary * 12) STORED
)

INSERT INTO employees (first_name, email, salary)
VALUES
('John Doe', 'johndoe@example.com', 3000.00),
('Jane Smith', 'janesmith@example.com', 4000.00),
('Alice Johnson', 'alicej@example.com', 3500.00),
('Bob Brown', 'bobbrown@example.com', 3200.00),
('Charlie White', 'charliew@example.com', 2800.00),
('Diana Prince', 'dianap@example.com', 4500.00),
('Eve Black', 'eveblack@example.com', 3700.00),
('Frank Green', 'frankg@example.com', 4100.00),
('Grace Hall', 'graceh@example.com', 3300.00),
('Henry Ford', 'henryf@example.com', 2900.00),
('Ivy Adams', 'ivyadams@example.com', 3600.00),
('Jack Brown', 'jackb@example.com', 3100.00),
('Karen Davis', 'karend@example.com', 3900.00),
('Larry Moore', 'larrym@example.com', 3400.00),
('Mia White', 'miaw@example.com', 4000.00),
('Nate King', 'natek@example.com', 3500.00),
('Olivia Wood', 'oliviaw@example.com', 4200.00),
('Paul Harris', 'paulh@example.com', 3000.00),
('Quincy Lane', 'quincyl@example.com', 3800.00),
('Rachel Fox', 'rachelf@example.com', 3600.00)

SELECT first_name, email, salary, annual_salary FROM employees

select first_name, email, salary, salary *12 as "Salário anual" from employees 

-- CRIANDO DUPLICATAS 
INSERT INTO employees (first_name, email, salary)
VALUES('Frank Green', 'frankg8@example.com', 4100.00),
('Grace Hall', 'graceh8@example.com', 3300.00),
('Henry Ford', 'henryf8@example.com', 2900.00),
('Ivy Adams', 'ivyadams8@example.com', 3600.00),
('Jack Brown', 'jackb8@example.com', 3100.00)

SELECT DISTINCT first_name from employees
ORDER BY first_name 

SELECT first_name from employees
where salary between 2000 and 3000

SELECT first_name from employees
where id in (2,5,10)

SELECT first_name from employees
where first_name like '%s%'

SELECT first_name from employees
where first_name like 's%'

SELECT first_name from employees
where first_name is null

