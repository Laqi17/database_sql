DROP TABLE IF EXISTS companies CASCADE;
DROP TABLE IF EXISTS developers CASCADE;
DROP TABLE IF EXISTS skills CASCADE;
DROP TABLE IF EXISTS developers_skills CASCADE;
DROP TABLE IF EXISTS projects CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS developers_projects CASCADE;

CREATE TABLE companies
( company_id 	BIGINT NOT NULL PRIMARY KEY,
 company_name  	VARCHAR(50),
 company_location VARCHAR(50)
);

CREATE TABLE developers
( developer_id	BIGINT NOT NULL PRIMARY KEY,
 first_name		VARCHAR(20),
 last_name		VARCHAR(25) NOT NULL,
 age			INT,
 sex			VARCHAR(10),
 company_id 	INT REFERENCES companies (company_id)
);

CREATE TABLE skills
(skill_id		BIGINT NOT NULL PRIMARY KEY,
description 	VARCHAR(50) NOT NULL,
skill_level		VARCHAR(10)
);

CREATE TABLE developers_skills
(skill_id 		BIGINT REFERENCES skills (skill_id),
developer		BIGINT REFERENCES developers (developer_id)
);

CREATE TABLE customers
(customer_id	BIGINT NOT NULL PRIMARY KEY,
 customer_name	VARCHAR(50),
 customer_location	VARCHAR(50)
);

CREATE TABLE projects
(project_id 	BIGINT NOT NULL PRIMARY KEY,
 description	VARCHAR(50),
 manager_name	VARCHAR(50),
 company_id		BIGINT REFERENCES companies (company_id),
 customer_id	BIGINT REFERENCES customers  (customer_id)
);

CREATE TABLE developers_projects
(developer_id	BIGINT REFERENCES developers (developer_id),
 project_id		BIGINT REFERENCES projects (project_id)
);

