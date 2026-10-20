SELECT students.name
FROM students
WHERE students.id IN (
	SELECT enrollments.student_id
	FROM enrollments
)
ORDER BY students.name ASC;