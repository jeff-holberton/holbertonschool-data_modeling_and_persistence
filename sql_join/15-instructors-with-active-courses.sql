SELECT instructors.name
FROM instructors
INNER JOIN registrations ON courses.id=registrations.course_id
INNER JOIN courses ON instructors.id=courses.instructor_id
GROUP BY instructors.id
ORDER BY instructors.name ASC;