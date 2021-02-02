SELECT COUNT(*) AS total_assistances, t.name
FROM assistance_requests ar JOIN teachers t ON ar.teacher_id = t.id 
WHERE t.name = 'Waylon Boehm'
GROUP BY t.name;