<?php session_start(); include("conn/conn.php");
if($Submit==" É¾³ýºÃÓÑ "){
    while(list($name,$value)=each($_POST)){    
         $result=mysql_query("delete from tb_my_friend where tb_friend_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('É¾³ý³É¹¦!'); history.back();</script>";
	}
	}
}
?>