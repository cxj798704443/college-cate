<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��У��ʳ��̳</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
}
.STYLE2 {font-size: 13px}
-->
</style>
<script language="javascript">
	nowNum=1;
	maxNum=4;
	window.onload=function(){
	show();
	showTime();
	}  
	function show(){	
		for(var i=1;i<=maxNum;i++)
		document.getElementById("div"+i).style.display =(i==nowNum)?'block':'none';
		
		if(nowNum == maxNum){   
   		 	nowNum = 1;
    	}
  			else{
	 		 nowNum++;
	  }
			theTimer = setTimeout('show()', 2000);
	}
	nowNum=1;
	maxNum=4;
	window.onload=function(){
	show();
	showTime();
	}  
</script>
</head>

<body>
<p align="center" class="STYLE1"></p>
<div>
  		<img src="images/aaa.jpg" width=950px height=400 alt="�ۺ�¥��������" id="div1" />
		<img src="images/bbb.jpg" width=950px height=400 alt="���������ͷ" id="div2" />
   		<img src="images/eee.jpg" width=950px height=400 alt="�����տ�" id="div3" />
		<img src="images/fff.jpg" width=950px height=400 alt="��԰�߹���" id="div4" />
</div>

</body>
</html>
