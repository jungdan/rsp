
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <style>
		#nav{
            width: 962px;
            margin: 0 auto;
            overflow: hidden;
        }
        #header{
		background-color: darkgray;
        height: 100px;
        text-align: center;
		}
        #header h1{
            height: 30px;
            list-style: none;
        }
        #content{
            width: 960px;
            height: 615px;
            clear: both;
        }
        #row{
       display: inline;
        }
       
        button{
        	clear : both;
            height: 30px;
            width: 110px;
           
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
 <div id="nav">
     <div id="header">
     <a href="#"><h3>가위바위보게임</h3></a>
     <h1>가위바위보를 선택하세요 </h1>
     </div>
     
     <div id="content">
     <form action="Result.jsp" method="get">
     <div id="row">
     <div class="scissors">
     <img src="image/가위.jpg">
     <input type="radio" name="you" value="0"> 가위</div>
     
     <div class="rock">
     <img src="image/바위.jpg">
     <input  type="radio" name="you" value="1"> 바위</div>
     
     <div class="paper">
     <img src="image/보.jpg">
     <input type="radio" name="you" value="2">보</div>
     </div><br>
     
     <button type="submit" >제출</button>
     </form>
     </div>
     </div>
     
     <div id="footer">
     <hr/>   
     <p>&copy; Company 2021-2022</p>
     </div>
</body>
</html>