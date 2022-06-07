<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrap{
width: 960px;
margin: 0 auto;
}
#header{
		background-color: darkgray;
        height: 100px;
        text-align: center;
        }
        #footer{
            width: 960px;
            height: 70px;
            text-align: center;
             margin: 0 auto;
        }

</style>
</head>
<body>
	<div id="wrap">
	<div id="header">
	<a href="Rsp.jsp"><h3>가위바위보게임</h3></a>
    <h1>가위바위보 게임 결과</h1>
	</div>
		
	<%
	switch(Integer.parseInt(request.getParameter("you"))){
	case 0:%>
	<p><img src="image/가위.jpg">가위</p>
	<%break;
	case 1:%>
	<p><img src="image/바위.jpg">바위</p>
	<%break;
	case 2:%>
	<p><img src="image/보.jpg">보</p>
	<%break;
	}%>	
	<h1>당신</h1>		
	
	
	<%
	int com = 0;
	String result = null;
	Random random  = new Random();
	com = random.nextInt(3);
	%>

	<%
	switch(com){
	case 0:%>
	<p><img src="image/가위.jpg">가위</p>
	<%break;
	case 1:%>
	<p><img src="image/바위.jpg">바위</p>
	<%break;
	case 2:%>
	<p><img src="image/보.jpg">보</p>
	<%break;
	}
	%>
	<h1>컴퓨터</h1>
	
	<%
	switch(Integer.parseInt(request.getParameter("you"))){
	case 0:
	if(com==1){
	result ="패배";
	out.println(result);
	break;
	}else if(com==2){
	result ="승리";
	out.println(result);
	break;
	}else{
	result = "무승부";
	out.println(result);
	break; 
	}
		
	case 1:
	if(com==1){
	result ="무승부";
	out.println(result);
	break;
	}else if(com==2){
	result = "패배";
	out.println(result);
	break;
	}else{
	result = "승리";
	out.println(result);
	break;
	}
		
	case 2:	
	if(com==1){
	result = "승리";
	out.println(result);
	break;
	}else if(com==2){
	result = "무승부";
	out.println(result);
	break;
	}else{
	result = "패배";
	out.println(result);
	break;
	}
	}
		
	%><br>
		
	<p><a href="Rsp.jsp" >한판더</a></p>

	<div id="footer">
	<hr/>
	<p>&copy; Company 2021-2022</p>
	</div>
	</div>

</body>
</html>
