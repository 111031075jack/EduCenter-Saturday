<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	// 取得 controller 來的訊息
	String msg = (String)request.getAttribute("msg");
	if(msg == null) msg = "";

%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>會員註冊(Register)</title>
		<style>

			body{
			    background-image:url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTfqcrjvV0mN6gox2Kl2ePkwf_6iAzFmfET8ALiLuxeQ&s=10');
			    background-size:cover;
			    background-position:center;
			    background-repeat:no-repeat;
			    
			    background-position:center -70px;
			}

	</style>
	</head>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<body class="container">
		
		<h2>會員註冊</h2>
		<form class="pure-form" method="post" action="/EduCenter/register">
			
			帳號: <input type="text" name="username" placeholder="請輸入帳號" required><p />
			密碼: <input type="password" name="password" placeholder="請輸入密碼" required><p />
			全名: <input type="text" name="fullname" placeholder="請輸入全名" required><p />
			信箱: <input type="email" name="email" placeholder="請輸入電子郵件" required><p />
			角色: <input type="radio" name="role" value="USER" checked />USER(一般使用者)
				 <input type="radio" name="role" value="ADMIN" />Admin(管理者)<p />
			
			<button type="submit" class="pure-button pure-button-primary">註冊</button>
			<button type="reset" class="pure-button">重置</button>
			
		</form>
	
		<h2 style="color: red"><%=msg %></h2>
	
	</body>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</html>