<?php 
 $content=$_GET[content];
 $content_1=$_GET[content_1];?>
<style type="text/css">
<!--
.STYLE4 {color: #FF0000; font-weight: bold; }
-->
</style>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<?php 
$query=mysql_query("select * from tb_forum_affiche where tb_affiche_type='$content'");
while($myrow=mysql_fetch_array($query)){
?>
  <tr>
    <td width="10%" align="center"><span class="STYLE4">【 公 告 】</span></td>
    <td width="90%"><a href="send_affiche.php?tb_affiche_type=<?php echo $myrow[tb_affiche_type];?>&&tb_affiche_id=<?php echo $myrow[tb_affiche_id];?>" target="_blank"><?php echo $myrow[tb_affiche_subject];?></a></td>
  </tr>
<?php }?>
<?php 
$query_1=mysql_query("select * from tb_forum_send where tb_send_type='1' and tb_send_small_type='$content_1'");
while($myrow_1=mysql_fetch_array($query_1)){
?>
  <tr>
    <td align="center" width="10%"><span class="STYLE4">【 置 顶 】</span></td>
    <td width="90%"><a href="send_forum_content.php?send_big_type=<?php echo $_GET[content];?>&&send_small_type=<?php echo $myrow_1[tb_send_small_type];?>&&send_id=<?php echo $myrow_1[tb_send_id];?>" target="_blank"><?php echo $myrow_1[tb_send_subject];?></a></td>
  </tr>
<?php }?>
</table>
<table width="100%" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#8394BF">
  <tr>
    <td height="24" colspan="2" align="center">标题</td>
    <td width="25%" align="center">创建时间</td>
    <td width="25%" align="center">创建人</td>
    <td align="center">回复次数</td>
  </tr>
<?php 
   if($page){			//实现精华区帖子的分页输出
    $page_size=10;		//每页显示10条记录
	//执行查询语句， 以tb_send_type_distillate字段的值是否为1为条件， 如果为1则是精华帖子，否则不是
    $query="select count(*) as total from tb_forum_send where tb_send_small_type='$_GET[content_1]' and tb_send_type_distillate=1";
	$result=mysql_query($query);
    $message_count=mysql_result($result,0,"total");
    $page_count=ceil($message_count/$page_size);	
    $offset=($page-1)*$page_size;	
	$query_2=mysql_query("select * from tb_forum_send where tb_send_small_type='$content_1' and tb_send_type_distillate='1' limit $offset, $page_size");
	while($myrow_2=mysql_fetch_array($query_2)){
?>
  <tr>
    <td width="5%" align="center" bgcolor="#FFFFFF"><img src="<?php echo $myrow_2[tb_send_picture];?>"></td>
    <td bgcolor="#FFFFFF"><a href="send_forum_content.php?send_big_type=<?php echo $_GET[content];?>&&send_small_type=<?php echo $myrow_2[tb_send_small_type];?>&&send_id=<?php echo $myrow_2[tb_send_id];?>" target="_blank"><?php echo $myrow_2[tb_send_subject];?></a></td>
    <td width="25%" bgcolor="#FFFFFF"><?php echo $myrow_2[tb_send_date];?></td>
    <td width="25%" bgcolor="#FFFFFF"><?php echo $myrow_2[tb_send_user];?></td>
    <td width="10%" bgcolor="#FFFFFF"><?php  $query_s=mysql_query("select * from tb_forum_restore where tb_send_id='$myrow_2[tb_send_id]'");
echo mysql_num_rows($query_s);
?></td>
  </tr>
<?php }}?>
</table>
<table width="100%">
  <tr>
    <td width="573"><table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="27%" height="22" align="center"><span class="STYLE2">帖子统计：<?php echo $message_count;?> 条&nbsp; </span></td>
                <td width="57%" align="center"><span class="STYLE2"> 分页： 
                <?php
				$next=$link_type*10;
				$n=$link_type-1;
				$m=$link_type+1;	
                $prev_page=$page-10;						
					if ($link_type==0){
                    echo "<img src=\"images/02.jpg\" width=\"8\" height=\"9\" border=\"0\" title=\"首页\">";					
					}else
					{
                     echo "<a href='content.php?vv=0&link_type=0&page=1&content=$_GET[content]&&content_1=$_GET[content_1]&&tb_send_type_distillate=1&&class=精华区'><img src=\"images/02.jpg\" width=\"8\" border=\"0\" height=\"9\" border=\"0\" title=\"首页\"></a>&nbsp;";
					 $ccc=$vv-10;
                     echo "<a href='content.php?vv=$ccc&link_type=$n&page=$prev_page&content=$_GET[content]&&content_1=$_GET[content_1]&&tb_send_type_distillate=1&&class=精华区'><img src=\"images/01.jpg\" width=\"8\" height=\"9\" border=\"0\" title=\"上十页\"></a>";
					}?>
                <?php	
 		        for ($j=1;$j<=$page_count;$j++) {
				       $pnext=$next+$j;
				       if ($mm==10){
					       break;
					   }
						if ($mm>$page_count){
							break;
						}
						if ($page_count-$vv<10){
	  						if ($mm>=$page_count-$vv){
								break;
							}									
						}
						?>
                <?php
                        echo "<a href='content.php?vv=$vv&link_type=$link_type&page=$pnext&content=$_GET[content]&&content_1=$_GET[content_1]&&tb_send_type_distillate=1&&class=精华区'> $pnext </a>";											
              	        $mm=$mm+1;						
	     	     }
				 ?>			    
                </span></td>
				 <td width="16%" align="center">
                   <span class="STYLE2">
                   <?php
				$vv=$vv+$mm;
				       if ($page_count-$vv<=0){
	                       echo "<img src=\"images/03.jpg\" width=\"8\" height=\"9\" border=\"0\" title=\"尾页\">";					
					   }else{
	                       echo "<a href='content.php?vv=$vv&link_type=$m&page=$pnext&content=$_GET[content]&&content_1=$_GET[content_1]&&tb_send_type_distillate=1&&class=精华区'><img src=\"images/03.jpg\" width=\"8\" height=\"9\" border=\"0\" title=\"下十页\"></a>";														
					   }
                if ($message_count==0){
					     echo "没有记录!";

				}
?>
                  </span> </td>
              </tr>
</table>
</td>
    <td width="195">&nbsp;<a href="send_forum.php" target="_blank">我要提问</a></td>
</tr></table>