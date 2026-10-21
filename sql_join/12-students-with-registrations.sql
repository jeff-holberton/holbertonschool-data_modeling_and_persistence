SELECT students.name
FROM students
INNER JOIN registrations ON students.id=registrations.student_id
GROUP BY students.id
ORDER BY students.name ASC;