SELECT
  a.id AS id,
  a.name AS name,
  a.day AS day,
  a.chapter AS chapter,
  COUNT(ar) AS total_requests
FROM assistance_requests ar
  JOIN assignments a ON ar.assignment_id = a.id
GROUP BY a.id
ORDER BY total_requests DESC;