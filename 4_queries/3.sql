SELECT 
  t.name AS teacher,
  s.name AS student,
  a.name AS assignment,
  (ar.completed_at - ar.started_at) AS duration
FROM assistance_requests ar 
  JOIN teachers t ON t.id = ar.teacher_id
  JOIN students s ON s.id = ar.student_id
  JOIN assignments a ON a.id = ar.assignment_id
ORDER BY duration;