<?php session_start(); include("conn/conn.php");
if($Submit=="精华帖"){
    while(list($name,$value)=each($_POST)){    
         $result=mysql_query("update tb_forum_send set tb_send_type_distillate='1' where tb_send_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('精华帖激活成功!'); window.location.href='index.php?title=帖子管理';</script>";}}
}
if($Submit2=="热门帖"){
 while(list($name,$value)=each($_POST)){    
         $result=mysql_query("update tb_forum_send set tb_send_type_hotspot='1' where tb_send_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('热门帖更新成功!'); window.location.href='index.php?title=帖子管理';</script>";} }
}


if($Submit3=="取消"){
    while(list($name,$value)=each($_POST)){    
         $result=mysql_query("update tb_forum_send set tb_send_type_distillate='0' where tb_send_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('精华帖取消!'); window.location.href='index.php?title=帖子管理';</script>";}}
}
if($Submit4=="取消"){
 while(list($name,$value)=each($_POST)){    
         $result=mysql_query("update tb_forum_send set tb_send_type_hotspot='0' where tb_send_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('热门帖取消!'); window.location.href='index.php?title=帖子管理';</script>";} }
}



if($Submit5=="结帖"){
    while(list($name,$value)=each($_POST)){    
         $result=mysql_query("update tb_forum_send set tb_forum_end='1' where tb_send_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('结贴激活成功!'); window.location.href='index.php?title=帖子管理';</script>";}}
}


if($Submit6=="取消"){
    while(list($name,$value)=each($_POST)){    
         $result=mysql_query("update tb_forum_send set tb_forum_end='0' where tb_send_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('取消结贴成功!'); window.location.href='index.php?title=帖子管理';</script>";}}
}
?>