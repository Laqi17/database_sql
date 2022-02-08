ALTER TABLE projects
ADD cost INT;

UPDATE projects
SET cost = 10000
WHERE project_id = 1;

UPDATE projects
SET cost = 20000
WHERE project_id = 2;

UPDATE projects
SET cost = 5000
WHERE project_id = 3;

UPDATE projects
SET cost = 7000
WHERE project_id = 4;