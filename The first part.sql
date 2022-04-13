use school;
# 查询单列
select s_id from student;
# 查询多列
select s_id,s_sex from student;

# 查询所有数据
select * from student;

# 去重 distinct
select distinct s_sex from student;

# 限制返回行数
select * from student limit 2;

# 单列排序 
select * from score order by s_score;

# 多列排序(列顺序)
select * from score order by s_score,c_id;

# 倒序排序
select * from score order by s_score desc;

## select 列名 from 表 where 相关过滤逻辑

# 单条件过滤
select * from student where s_name = '赵雷';

# 范围值过滤
select * from student where s_id >=5;

# 多条件过滤
select * from student where s_id >=5 and s_id<=7;
select * from student where s_id between 5 and 7;

# in , not in
select * from student where s_id in (1,3,6,8);
select * from student where s_id not in (1,3,6,8);

# null 值检查
select * from student where	s_birth is null;

# 圆括号优先级 和 and 优先级 (and 优先级大于 or)
select * from student where s_id = 1 or s_id = 5 and s_sex ='女';
select * from student where (s_id = 1 or s_id = 5) and s_sex ='女';

# 通配符 '%'(%可以匹配一个或多个)  模糊查找
select * from student where s_name like '赵%';
select * from student where s_name like '%雷';
select * from student where s_birth like '%05%';
select * from student where s_birth like '1990%20';
# 通配符 '_' (只能匹配单个)
# 赵雷雷
select * from student where s_name like '赵__';

# 创建字段1
select concat (s_name,s_sex) as new_col from student;
select concat (s_name,' - ',s_sex) as new_col from student;

# 创建字段2
select *,c_id*s_id as new_col from score;

# 创建字段3  注意区分加引号与不加引号之间的区别
select * , 'ABC' from student;
select s_id , s_name from student;


### 函数
# rtrim 删除右边空格
select ltrim(concat ('       ',s_name)) as name from student;

# 长度
select length(s_name) from Student;

# 大小写 upper()  lower()
select upper('abc');
select lower('ABC');

# 字符串截取  left right substring
select left('dathon数据分析',5);
select right('dathon数据分析',5);
select substring('dathon数据分析',7,2);

## 时间处理函数
# 返回当前日期
select curdate();
# 返回当前时间
select curtime();
# 日期 + 时间
select concat(curdate(),'---',curtime());

# date add 加天数
select date_add(concat(curdate(),'---',curtime()),interval +1 day) as nowtime;

### 数值型函数
select mod(16,3);
select rand();
select sqrt(16);

# 聚集函数
select avg



### 分组计算



























