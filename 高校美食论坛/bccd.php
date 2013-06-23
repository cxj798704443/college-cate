<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>高校美食论坛</title>
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
  		<img src="images/aaa.jpg" width=950px height=400 alt="综合楼多米披萨" id="div1" />
		<img src="images/bbb.jpg" width=950px height=400 alt="川香金银馒头" id="div2" />
   		<img src="images/eee.jpg" width=950px height=400 alt="海棠烧烤" id="div3" />
		<img src="images/fff.jpg" width=950px height=400 alt="竹园瓦罐汤" id="div4" />
</div>

</body>
</html>
