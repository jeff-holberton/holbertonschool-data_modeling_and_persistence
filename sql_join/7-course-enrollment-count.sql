SELECT courses.title, student_count
FROM courses
LEFT JOIN (
	SELECT COUNT(*) AS student_count, enrollments.course_id AS course_id
	FROM enrollments
	GROUP BY enrollments.course_id
) sub ON courses.id=course_id
ORDER BY student_count DESC, courses.title ASC;

