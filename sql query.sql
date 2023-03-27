select first_name, last_name
from student;

select instructor_id
from instructor
where tenured = 1;

select student.first_name as "student f_name", student.last_name as "student l_name", instructor.first_name as "instructor f_name",
instructor.last_name as "instructor l_name"
from student, instructor
where student.advisor_id = instructor.instructor_id;

select instructor.instructor_id, instructor.first_name, instructor.last_name
from instructor left join student
on instructor.instructor_id = student.advisor_id
where student.advisor_id is null;

select instructor.first_name, instructor.last_name, course.num_credits
from instructor, course
where instructor.instructor_id = course.instructor_id;

select course_name, course_code
from course
where course_code like 'F____3%'
union
select course_name, course_code
from course
where course_code like 'I____3%'
union
select course_name, course_code
from course
where course_code like 'I____4%';

select course.course_code, instructor.first_name, instructor.last_name, course.num_credits
from course, student, student_schedule, instructor
where student.student_id = 1
and student.student_id = student_schedule.student_id
and student_schedule.course_id = course.course_id
and course.instructor_id = instructor.instructor_id



