
/*
Given the following table schemas, how would you figure out the overall attendance rate for each grade on 2018-03-12? Answers will be provided in SQL for premium users.
Table 1: student_attendance_log
Column Name	        Data Type	  Description
date	              string	    date of log per student_id, format is 'yyyy-mm-dd'
student_id	        integer	    id of the student
attendance_status	  string	    Possible values are ['present', 'tardy', 'absent']

Table 2: student_demographic
Column Name	    Data Type	  Description
student_id	    integer	    id of the student
grade_level	    integer	    will be a value between 0-12, which corresponds
date_of_birth	  string	    Student birth date, format is 'yyyy-mm-dd'
*/


/*assuming attendance rate is considering only present students and not tardy or absent */

select grade_level, overall_attendance_rate
from 
  (select a.*, b.* from student_attendance_log as a left join student_demographic as b on a.student_id = b.student_id)
where date = "2018-03-12"

