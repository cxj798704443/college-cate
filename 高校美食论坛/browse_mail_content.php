<?php session_start();include("conn/conn.php");
if($_GET[mail_id]==true){
	$query=mysql_query("update tb_mail_box set tb_mail_type=1 where tb_mail_id='$_GET[mail_id]'");
}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>
<style type="text/css">
<!--
body {
	background-color: #8394BF;
}
-->
</style>
<body>
<?php include_once("enter.php");?>

<table width="950" height="150" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F7F7FF">
<?php 	$query=mysql_query("select * from tb_mail_box where tb_mail_id='$_GET[mail_id]'"); 
		$myrow=mysql_fetch_array($query);
?>
  <tr>
    <td width="129">&nbsp;</td>
    <td width="504" height="35"><?php echo $myrow[tb_mail_subject];?></td>
    <td width="219">&nbsp;</td>
    <td width="98">&nbsp;</td>
  </tr>
  <tr>
    <td height="80">&nbsp;</td>
    <td height="80"><?php echo $myrow[tb_mail_content];?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="35">&nbsp;</td>
    <td><?php  echo $myrow[tb_mail_sender];?>
      -----
    <?php  echo $myrow[tb_mail_date];?></td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="667" bgcolor="#F7F7FF">&nbsp;</td>
    <td width="283" bgcolor="#F7F7FF"><img src="images/index_8 (2).jpg" width="218" height="75"></td>
  </tr>
  <tr>
    <td bgcolor="#8496BD">&nbsp;</td>
    <td bgcolor="#8496BD">&nbsp;</td>
  </tr>
</table>
</body>
</html>
