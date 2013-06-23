<?php 
if(file_exists($_GET[accessories])==false)
{
 echo "<script>alert('该文件已删除，请与管理员联系。');history.back();</script>";
 exit;
}
$filename=basename($_GET[accessories]);
$file=fopen($_GET[accessories],"r");
header("Content-type:application/octet-stream");
header("Accept-ranges:bytes");
header("Accept-length:".filesize($_GET[accessories]));
header("Content-Disposition:attachment;filename=".$filename);
echo fread($file,filesize($_GET[accessories]));
fclose($file);
exit;

?>