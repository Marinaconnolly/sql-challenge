-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "titles" (
    "title_id" VAR   NOT NULL,
    "title" VAR   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" VAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VAR   NOT NULL,
    "last_name" VAR   NOT NULL,
    "sex" VAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" VAR   NOT NULL,
    "dept_name" VAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no." VAR   NOT NULL,
    "emp_no." int   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no." int   NOT NULL,
    "dept_no." VAR   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no.","dept_no."
     )
);

CREATE TABLE "salaries" (
    "emp_no." int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no."
     )
);

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
REFERENCES "employees" ("emp_title_id");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_manager" ("emp_no.");

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_manager" ("dept_no.");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no._emp_no." FOREIGN KEY("dept_no.", "emp_no.")
REFERENCES "dept_emp" ("dept_no.", "emp_no.");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no." FOREIGN KEY("emp_no.")
REFERENCES "salaries" ("emp_no.");

