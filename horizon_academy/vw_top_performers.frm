TYPE=VIEW
query=select `s`.`student_code` AS `student_code`,concat(`s`.`first_name`,\' \',`s`.`last_name`) AS `full_name`,`g`.`grade_name` AS `grade_name`,`c`.`class_name` AS `class_name`,round(avg(`sc`.`score`),1) AS `avg_score` from (((`horizon_academy`.`scores` `sc` join `horizon_academy`.`students` `s` on(`sc`.`student_id` = `s`.`student_id`)) join `horizon_academy`.`classes` `c` on(`s`.`class_id` = `c`.`class_id`)) join `horizon_academy`.`grades` `g` on(`c`.`grade_id` = `g`.`grade_id`)) group by `sc`.`student_id`,`s`.`student_code`,`s`.`first_name`,`s`.`last_name`,`g`.`grade_name`,`c`.`class_name` order by round(avg(`sc`.`score`),1) desc
md5=580aa9a6b87abe8234a3c53203f672f0
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001775425313671444
create-version=2
source=SELECT\n    s.student_code,\n    CONCAT(s.first_name, \' \', s.last_name) AS full_name,\n    g.grade_name,\n    c.class_name,\n    ROUND(AVG(sc.score), 1)               AS avg_score\nFROM scores sc\nJOIN students s ON sc.student_id = s.student_id\nJOIN classes  c ON s.class_id    = c.class_id\nJOIN grades   g ON c.grade_id    = g.grade_id\nGROUP BY sc.student_id, s.student_code, s.first_name, s.last_name, g.grade_name, c.class_name\nORDER BY avg_score DESC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `s`.`student_code` AS `student_code`,concat(`s`.`first_name`,\' \',`s`.`last_name`) AS `full_name`,`g`.`grade_name` AS `grade_name`,`c`.`class_name` AS `class_name`,round(avg(`sc`.`score`),1) AS `avg_score` from (((`horizon_academy`.`scores` `sc` join `horizon_academy`.`students` `s` on(`sc`.`student_id` = `s`.`student_id`)) join `horizon_academy`.`classes` `c` on(`s`.`class_id` = `c`.`class_id`)) join `horizon_academy`.`grades` `g` on(`c`.`grade_id` = `g`.`grade_id`)) group by `sc`.`student_id`,`s`.`student_code`,`s`.`first_name`,`s`.`last_name`,`g`.`grade_name`,`c`.`class_name` order by round(avg(`sc`.`score`),1) desc
mariadb-version=100432
