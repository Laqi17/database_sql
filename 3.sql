SELECT SUM(d.salary) FROM developers d
INNER JOIN developers_skills ds ON d.developer_id = ds.developer
INNER JOIN skills s ON s.skill_id = ds.skill_id
WHERE s.description LIKE '%Java%';