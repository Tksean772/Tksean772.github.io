TYPE=VIEW
query=select `s`.`student_code` AS `student_code`,concat(`s`.`first_name`,\' \',`s`.`last_name`) AS `full_name`,`g`.`grade_name` AS `grade_name`,`f`.`term` AS `term`,`f`.`academic_year` AS `academic_year`,`f`.`amount_due` AS `amount_due`,`f`.`amount_paid` AS `amount_paid`,`f`.`amount_due` - `f`.`amount_paid` AS `balance_due`,`f`.`due_date` AS `due_date` from (((`horizon_academy`.`fees` `f` join `horizon_academy`.`students` `s` on(`f`.`student_id` = `s`.`student_id`)) join `horizon_academy`.`classes` `c` on(`s`.`class_id` = `c`.`class_id`)) join `horizon_academy`.`grades` `g` on(`c`.`grade_id` = `g`.`grade_id`)) where `f`.`payment_status` <> \'Paid\' order by `f`.`amount_due` - `f`.`amount_paid` desc
md5=4bc728ef322e3ff4ab91c09ecc88a0a0
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001775425287227231
create-version=2
source=SELECT\n    s.student_code,\n    CONCAT(s.first_name, \' \', s.last_name) AS full_name,\n    g.grade_name,\n    f.term,\n    f.academic_year,\n    f.amount_due,\n    f.amount_paid,\n    (f.amount_due - f.amount_paid)         AS balance_due,\n    f.due_date\nFROM fees f\nJOIN students s ON f.student_id = s.student_id\nJOIN classes  c ON s.class_id   = c.class_id\nJOIN grades   g ON c.grade_id   = g.grade_id\nWHERE f.payment_status != \'Paid\'\nORDER BY balance_due DESC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `s`.`student_code` AS `student_code`,concat(`s`.`first_name`,\' \',`s`.`last_name`) AS `full_name`,`g`.`grade_name` AS `grade_name`,`f`.`term` AS `term`,`f`.`academic_year` AS `academic_year`,`f`.`amount_due` AS `amount_due`,`f`.`amount_paid` AS `amount_paid`,`f`.`amount_due` - `f`.`amount_paid` AS `balance_due`,`f`.`due_date` AS `due_date` from (((`horizon_academy`.`fees` `f` join `horizon_academy`.`students` `s` on(`f`.`student_id` = `s`.`student_id`)) join `horizon_academy`.`classes` `c` on(`s`.`class_id` = `c`.`class_id`)) join `horizon_academy`.`grades` `g` on(`c`.`grade_id` = `g`.`grade_id`)) where `f`.`payment_status` <> \'Paid\' order by `f`.`amount_due` - `f`.`amount_paid` desc
mariadb-version=100432
