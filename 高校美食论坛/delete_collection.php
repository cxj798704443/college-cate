<?php session_start(); include("conn/conn.php");
if($Submit==" É¾³ý±êÇ© "){
    while(list($name,$value)=each($_POST)){    
         $result=mysql_query("delete from tb_my_collection where tb_collection_id='".$name."'");          
    if($result==true){
	    echo "<script>alert('É¾³ý³É¹¦!'); history.back();</script>";
	}
	}
}
?>