<%@page import="model.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String welcomeMessage = "[尚未登入🚫] &nbsp";
	Member member = (Member)session.getAttribute("member");
	if(member != null) {
		welcomeMessage = "Hi " + member.getFullname() + "("+ member.getRole() +") 你好 (●'◡'●) &nbsp";
	}
	
	boolean isLogin = false; // 是否登入
	boolean isAdmin = false; // 是否是 ADMIN 
	// 判斷是否有登入
	if(member != null){
		isLogin = true;
		// 判斷是否是 ADMIN 角色
		if(member.getRole().equals("ADMIN")){
			isAdmin = true;
		}
		
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
    
	<% if(!isLogin){ %>
		<a href="/EduCenter/login">登入</a>
	<% } %>
	
	<% if(!isLogin){ %>
		<a href="/EduCenter/register">註冊</a>
	<% } %>
	
	<% if(isLogin){ %>
		<a href="/EduCenter/profile">會員中心</a>
	<% } %>
	
	<% if(isLogin && isAdmin){ %>
		<a href="/EduCenter/members">會員列表(ADMIN)</a>
	<% } %>
	
	<% if(isLogin){ %>
		<a href="/EduCenter/logout">登出</a>
	<% } %>
</div>

