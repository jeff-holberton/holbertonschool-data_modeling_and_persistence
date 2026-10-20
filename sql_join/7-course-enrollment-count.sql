SELECT courses.title, COUNT(enrollments.course_id) AS student_count
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.id, courses.title
ORDER BY student_count DESC, courses.title ASC;