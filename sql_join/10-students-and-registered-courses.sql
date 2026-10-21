SELECT students.name, courses.title
FROM students
INNER JOIN courses ON registrations.course_id=courses.id
LEFT JOIN registrations ON students.id=registrations.student_id
ORDER BY students.name, courses.title ASC;