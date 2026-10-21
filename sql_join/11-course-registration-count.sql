SELECT courses.title, COUNT(registrations.course_id) AS enrollment_count
FROM courses
LEFT JOIN registrations ON courses.id=registrations.course_id
GROUP BY courses.id
ORDER BY enrollment_count DESC, courses.title ASC;