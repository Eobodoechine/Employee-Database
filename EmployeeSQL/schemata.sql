CREATE TABLE Department (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR  NOT NULL,
    PRIMARY KEY (dept_no)
);


CREATE TABLE Everything (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);


CREATE TABLE Employees (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY(dept_no) REFERENCES Department (dept_no),
	FOREIGN KEY(emp_no) REFERENCES Everything (emp_no)
);


CREATE TABLE Salary (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_no) REFERENCES Everything (emp_no)
);


CREATE TABLE Manager (
    dept_no VARCHAR NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY(emp_no, dept_no) REFERENCES Employees (emp_no, dept_no)
);


CREATE TABLE Titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title)
);




