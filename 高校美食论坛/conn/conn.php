<?php
 $conn=mysql_connect("localhost","root","920608");		//连接数据库服务器
 mysql_select_db("db_forum",$conn);					//连接指定的数据库
 mysql_query("set names gb2312");						//对数据库中的编码格式进行转换,避免出现中文乱码的问题
?>