<?php session_start(); include_once("conn/conn.php");
if($_SESSION[tb_forum_user]==true){				//判断是否是正确登录
$tb_restore_subject=$_POST[restore_subject];	//获取回复帖子的主题
$tb_restore_content=$_POST[file];				//获取上传的附件
$tb_restore_user=$_POST[tb_restore_user];		//获取回复人
$tb_send_id=$_POST[tb_send_id];					//获取要回复帖子的ID
$tb_restore_date=date("Y-m-d H:i:s");			//定义回复时间




if($_FILES[restore_accessories][size]==0){		//判断是否有附件上传
if(mysql_query("insert into tb_forum_restore(tb_restore_subject,tb_restore_content,tb_restore_user,tb_send_id,tb_restore_date) values ('".$tb_restore_subject."','".$tb_restore_content."','".$tb_restore_user."','".$tb_send_id."','".$tb_restore_date."')",$conn)){

 mysql_query("update tb_forum_restore set tb_forum_counts=tb_forum_counts+1",$conn);
 mysql_query("update tb_forum_send set tb_send_types=1 where tb_send_id='$tb_send_id'",$conn);
 echo "<script>alert('回复成功!');history.back();</script>";
 mysql_close($conn);
 }else{
   echo "<script>alert('回复失败!');history.back();</script>";
   mysql_close($conn);
  }
}


if($_FILES[restore_accessories][size] > 20000000){		//判断上传的附件是否超过规定文件的大小
	echo "<script>alert('上传文件超过指定大小！');history.go(-1);</script>";
	exit();
}else{

$path = './file/'.time().$_FILES['restore_accessories']['name'];		//定义上传文件的名称和存储的路径
if (move_uploaded_file($_FILES['restore_accessories']['tmp_name'],$path)) { 	//将附件存储到服务器指定的文件夹下


if(mysql_query("insert into tb_forum_restore(tb_restore_subject,tb_restore_content,tb_restore_user,tb_send_id,tb_restore_date,tb_restore_accessories) values ('".$tb_restore_subject."','".$tb_restore_content."','".$tb_restore_user."','".$tb_send_id."','".$tb_restore_date."','".$path."')",$conn)){

 mysql_query("update tb_forum_restore set tb_forum_counts=tb_forum_counts+1",$conn);
 mysql_query("update tb_forum_send set tb_send_types=1 where tb_send_id='$tb_send_id'",$conn);
 echo "<script>alert('回复成功!');history.back();</script>";
 mysql_close($conn);
 }else{
   echo "<script>alert('回复失败!');history.back();</script>";
   mysql_close($conn);
  }
}}










}else{
   echo "<script>alert('对不起，您不可以回复帖子，请先登录到本站，谢谢!');history.back();</script>";
}
?>

