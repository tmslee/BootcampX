SELECT COUNT(ar) AS total_assistances, s.name AS name
FROM assistance_requests ar
  JOIN students s ON ar.student_id = s.id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;