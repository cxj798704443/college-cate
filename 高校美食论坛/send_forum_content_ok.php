<?php session_start(); include_once("conn/conn.php");
if($_SESSION[tb_forum_user]==true){				//�ж��Ƿ�����ȷ��¼
$tb_restore_subject=$_POST[restore_subject];	//��ȡ�ظ����ӵ�����
$tb_restore_content=$_POST[file];				//��ȡ�ϴ��ĸ���
$tb_restore_user=$_POST[tb_restore_user];		//��ȡ�ظ���
$tb_send_id=$_POST[tb_send_id];					//��ȡҪ�ظ����ӵ�ID
$tb_restore_date=date("Y-m-d H:i:s");			//����ظ�ʱ��




if($_FILES[restore_accessories][size]==0){		//�ж��Ƿ��и����ϴ�
if(mysql_query("insert into tb_forum_restore(tb_restore_subject,tb_restore_content,tb_restore_user,tb_send_id,tb_restore_date) values ('".$tb_restore_subject."','".$tb_restore_content."','".$tb_restore_user."','".$tb_send_id."','".$tb_restore_date."')",$conn)){

 mysql_query("update tb_forum_restore set tb_forum_counts=tb_forum_counts+1",$conn);
 mysql_query("update tb_forum_send set tb_send_types=1 where tb_send_id='$tb_send_id'",$conn);
 echo "<script>alert('�ظ��ɹ�!');history.back();</script>";
 mysql_close($conn);
 }else{
   echo "<script>alert('�ظ�ʧ��!');history.back();</script>";
   mysql_close($conn);
  }
}


if($_FILES[restore_accessories][size] > 20000000){		//�ж��ϴ��ĸ����Ƿ񳬹��涨�ļ��Ĵ�С
	echo "<script>alert('�ϴ��ļ�����ָ����С��');history.go(-1);</script>";
	exit();
}else{

$path = './file/'.time().$_FILES['restore_accessories']['name'];		//�����ϴ��ļ������ƺʹ洢��·��
if (move_uploaded_file($_FILES['restore_accessories']['tmp_name'],$path)) { 	//�������洢��������ָ�����ļ�����


if(mysql_query("insert into tb_forum_restore(tb_restore_subject,tb_restore_content,tb_restore_user,tb_send_id,tb_restore_date,tb_restore_accessories) values ('".$tb_restore_subject."','".$tb_restore_content."','".$tb_restore_user."','".$tb_send_id."','".$tb_restore_date."','".$path."')",$conn)){

 mysql_query("update tb_forum_restore set tb_forum_counts=tb_forum_counts+1",$conn);
 mysql_query("update tb_forum_send set tb_send_types=1 where tb_send_id='$tb_send_id'",$conn);
 echo "<script>alert('�ظ��ɹ�!');history.back();</script>";
 mysql_close($conn);
 }else{
   echo "<script>alert('�ظ�ʧ��!');history.back();</script>";
   mysql_close($conn);
  }
}}










}else{
   echo "<script>alert('�Բ����������Իظ����ӣ����ȵ�¼����վ��лл!');history.back();</script>";
}
?>

