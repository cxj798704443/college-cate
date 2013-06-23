<?php session_start();include("conn/conn.php"); ?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>我参与的帖子</title>
<style type="text/css">
<!--
.STYLE5 {font-size: 12px}
-->
</style>
</head>
<style type="text/css">
<!--
body {
	background-color: #8394BF;
}
-->
</style>
<body>
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td colspan="3" align="left"><img src="images/我参与的帖子.jpg" width="137" height="34"></td>
    <td align="left">&nbsp;<a href="send_forum.php" target="_blank">我要提问</a></td>
    <td align="left">&nbsp;</td>
  </tr>
  <tr>
    <td width="98" height="35" align="center" bgcolor="#F7F7FF">&nbsp;</td>
    <td width="235" bgcolor="#F7F7FF"><span class="STYLE5"><strong>标题</strong></span></td>
    <td width="180" bgcolor="#F7F7FF"><span class="STYLE5"><strong>创建时间</strong></span></td>
    <td width="187" bgcolor="#F7F7FF"><span class="STYLE5"><strong>创建人</strong></span></td>
    <td width="250" bgcolor="#F7F7FF"><span class="STYLE5"><strong>回复次数</strong></span></td>
  </tr>
  <?php 
$i=0;
	$queryes=mysql_query("select * from tb_forum_send where tb_send_user='$_GET[my_forum_user]'");
	while($myrowes=mysql_fetch_array($queryes)){
$i++;
?>
  <?php 
$query_2=mysql_query("select * from tb_forum_send where tb_send_id='$myrowes[tb_send_id]'");
$myrow_2=mysql_fetch_array($query_2);

if($i%2==0){
?>
<tr>
    <td align="center" bgcolor="#F7F7FF"><img src="<?php echo $myrow_2[tb_send_picture];?>" /></td>
    <td bgcolor="#F7F7FF"><a href="send_forum_content.php?send_big_type=<?php echo $_GET[content];?>&amp;&amp;send_small_type=<?php echo $myrow_2[tb_send_small_type];?>&amp;&amp;send_id=<?php echo $myrow_2[tb_send_id];?>" target="_blank"><?php echo $myrow_2[tb_send_subject];?></a></td>
    <td bgcolor="#F7F7FF"><?php echo $myrow_2[tb_send_date];?></td>
    <td bgcolor="#F7F7FF"><?php echo $myrow_2[tb_send_user];?></td>
    <td bgcolor="#F7F7FF"><?php  $query_s=mysql_query("select * from tb_forum_restore where tb_send_id='$myrow_2[tb_send_id]'");
echo mysql_num_rows($query_s);
?>
    </span></td>
  </tr>
  <?php }
if($i%2!=0){

?>
  <tr>
    <td align="center" bgcolor="#F7F7FF"><img src="<?php echo $myrow_2[tb_send_picture];?>" /></td>
    <td bgcolor="#F7F7FF"><a href="send_forum_content.php?send_big_type=<?php echo $_GET[content];?>&amp;&amp;send_small_type=<?php echo $myrow_2[tb_send_small_type];?>&amp;&amp;send_id=<?php echo $myrow_2[tb_send_id];?>" target="_blank"><?php echo $myrow_2[tb_send_subject];?></a></td>
    <td bgcolor="#F7F7FF"><?php echo $myrow_2[tb_send_date];?></td>
    <td bgcolor="#F7F7FF"><?php echo $myrow_2[tb_send_user];?></td>
    <td bgcolor="#F7F7FF"><?php  $query_s=mysql_query("select * from tb_forum_restore where tb_send_id='$myrow_2[tb_send_id]'");
echo mysql_num_rows($query_s);
?>
    </span></td>
  </tr>
  <?php
}
}

?>
</table>
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F7F7FF">
  <tr>
    <td width="643" height="400" align="right">&nbsp;</td>
    <td width="307">&nbsp;</td>
</tr>
  
</table>
</body>
</html>
