ALTER TABLE projects
ADD cost INT;

UPDATE projects
SET cost = (
SELECT sum(d.salary) FROM developers d
join developers_projects dp on d.developer_id = dp.developer_id
join projects pr on pr.project_id = dp.project_id
WHERE pr.project_id = 1
)
WHERE project_id = 1;

UPDATE projects
SET cost = (
SELECT sum(d.salary) FROM developers d
join developers_projects dp on d.developer_id = dp.developer_id
join projects pr on pr.project_id = dp.project_id
WHERE pr.project_id = 2
)
WHERE project_id = 2;

UPDATE projects
SET cost = (
SELECT sum(d.salary) FROM developers d
join developers_projects dp on d.developer_id = dp.developer_id
join projects pr on pr.project_id = dp.project_id
WHERE pr.project_id = 3
)
WHERE project_id = 3;

UPDATE projects
SET cost = (
SELECT sum(d.salary) FROM developers d
join developers_projects dp on d.developer_id = dp.developer_id
join projects pr on pr.project_id = dp.project_id
WHERE pr.project_id = 4
)
WHERE project_id = 4;
