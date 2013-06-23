<?php session_start();include("conn/conn.php");?>
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
<table width="950" align="center" height="150" border="0" cellpadding="0" cellspacing="0">
<?php 	$query=mysql_query("select * from tb_mail_box where tb_mail_id='$_GET[mail_id]'"); 
		$myrow=mysql_fetch_array($query);
?>
  <tr height="35">
    <td width="174" bgcolor="#F7F7FF">&nbsp;</td>
    <td width="499" bgcolor="#F7F7FF"><?php echo $myrow[tb_mail_subject];?> </td>
    <td width="200" bgcolor="#F7F7FF">&nbsp;</td>
    <td width="77" bgcolor="#F7F7FF">&nbsp;</td>
  </tr>
  <tr height="80">
    <td bgcolor="#F7F7FF">&nbsp;</td>
    <td bgcolor="#F7F7FF"><?php echo $myrow[tb_mail_content];?></td>
    <td bgcolor="#F7F7FF">&nbsp;</td>
    <td bgcolor="#F7F7FF">&nbsp;</td>
  </tr>
  <tr height="35">
    <td bgcolor="#F7F7FF">&nbsp;</td>
    <td bgcolor="#F7F7FF">&nbsp;</td>
    <td bgcolor="#F7F7FF"><?php  echo $myrow[tb_receiving_person];?>
      -----
    <?php  echo $myrow[tb_mail_date];?></td>
    <td bgcolor="#F7F7FF">&nbsp;</td>
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