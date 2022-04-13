use school;
select * from score;


# 查询所有课程的平均分
select c_id,avg(s_score) as pingjunfen from score group by c_id;

# 查询平均成绩大于60分的学成的学号和平均成绩
select s_id,avg(s_score) from score group by s_id having avg(s_score) > 60;

# 子查询
select * from
(select c_id,avg(s_score) as avgsc from score group by c_id) t
where t.avgsc > 70;

# where 子查询
# 单值   查询语文分数大于语文平均分的学生s_id 和 s_score
select s_id,s_score from score where c_id = 1 and s_score > (select avg(s_score) from score where c_id = 1);

# 多值查询 in , not in
# 查询所有课程成绩小于60分的学生学号和姓名
select s_id,s_name from student where s_id in (select s_id from score where s_score < 60);