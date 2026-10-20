SELECT courses.title
FROM courses
JOIN enrollments ON courses.id=enrollments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(*) > (
	SELECT AVG(course_count)
	FROM (
		SELECT COUNT(*) AS course_count
		FROM enrollments
		GROUP BY course_id
	)
)
ORDER BY courses.title ASC