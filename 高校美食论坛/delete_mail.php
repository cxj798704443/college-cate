<?php session_start(); include("conn/conn.php");
if($Submit==" 清除信息 "){
    while(list($name,$value)=each($_POST)){    
         $result=mysql_query("delete from tb_mail_box where tb_mail_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('删除成功!'); window.location.href='send_mail.php?sender=$_GET[sender]&&mails=$mails';</script>";
	}
	}
}
?>