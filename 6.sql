SELECT AVG(d.salary) FROM developers d
INNER JOIN developers_projects dp ON d.developer_id = dp.developer_id
INNER JOIN projects pr ON pr.project_id = dp.project_id
WHERE pr.project_id = 
(
SELECT project_id FROM projects p
WHERE p.cost = (SELECT MIN(cost) FROM projects)
);