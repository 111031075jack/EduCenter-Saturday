<%@page import="model.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String welcomeMessage = "[尚未登入🚫] &nbsp";
	Member member = (Member)session.getAttribute("member");
	if(member != null) {
		welcomeMessage = "Hi " + member.getFullname() + "("+ member.getRole() +") 你好 (●'◡'●) &nbsp";
	}
%>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">

<style>
    .header {
        background: #fc4e03;
        color: white;
        padding: 12px 20px;
        font-weight: bold;
    }

    .header a{
	    color:white;
	    text-decoration:none;
	    padding:8px 14px;
	    border-radius:8px;
	    transition:0.3s;
	}

    .header a:hover{
	    background:white;
	    color:#1f2937;
	}

    .container {
        width: 900px;
        margin: 20px auto;
    }
    
    
    body {
    	font-family: 微軟正黑體;
    	background: linear-gradient(to right, #74ebd5, #ACB6E5);
	}
    
    .reset-btn {
	    background: #22c55e;  /* 綠色 */
	    color: white;
	    border-radius: 8px;
	}
	
	.reset-btn:hover {
    	background: #16a34a;
	}
    
    .size{
    	font-weight: bold;
    }
    
</style>

<div class="header">
    <%= welcomeMessage %>
	<a href="/EduCenter/login">登入</a>
	<a href="/EduCenter/register">註冊</a>
	<a href="/EduCenter/profile">會員中心</a>
	<a href="/EduCenter/members">會員列表(ADMIN)</a>
	<a href="/EduCenter/logout">登出</a>
</div>

