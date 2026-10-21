SELECT courses.title
FROM courses
LEFT JOIN assignments ON courses.id=assignments.course_id
GROUP BY courses.id
HAVING COUNT(*) > (
	SELECT AVG(assignment_count) 
	FROM (
		SELECT COUNT(*) AS assignment_count
		FROM assignments
		GROUP BY assignments.course_id
	)
)
ORDER BY courses.title ASC;