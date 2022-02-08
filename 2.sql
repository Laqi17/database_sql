SELECT project_id, MAX(t.sum)
FROM
(
SELECT sum(d.salary) as sum, dp.project_id FROM developers d
join developers_projects dp on d.developer_id = dp.developer_id
join projects pr on pr.project_id = dp.project_id
GROUP BY dp.project_id
) t
WHERE sum = 
(
SELECT MAX(t.sum)
FROM
(
SELECT sum(d.salary) as sum, dp.project_id FROM developers d
join developers_projects dp on d.developer_id = dp.developer_id
join projects pr on pr.project_id = dp.project_id
GROUP BY dp.project_id
) t
)
GROUP BY project_id;
