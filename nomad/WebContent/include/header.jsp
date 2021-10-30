<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initail-scale=1.0">
<title>Ark Academy</title>
<link href="../imgs/favicon.ico" rel="shortcut icon">
<link href="../imgs/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="https://fonts.googleapis.com/css?family=Merriweather:300,400,700|Titillium+Web:400,600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">
<link rel="stylesheet" href="../fontAwesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../flexSlider/flexslider.css">
<link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="../css/addrbook.css">
<link rel="stylesheet" href="../css/member-style.css">
<link rel="stylesheet" href="../css/board-style.css">
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/desktop-uhd.css" media="screen and (min-width:1400px)">
<link rel="stylesheet" href="../css/desktop.css" media="screen and (min-width:1020px) and (max-width:1399px)">
<link rel="stylesheet" href="../css/tablet.css" media="screen and (min-width:701px) and (max-width:1019px)">
<link rel="stylesheet" href="../css/mobile.css" media="screen and (max-width:700px)">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="../flexSlider/jquery.flexslider-min.js"></script>
<script src="../bootstrap/bootstrap.min.js"></script>
<script>
	$(document).ready(function(e) {
		$('.flexslider').flexslider({ animation: "slide" });

	});
</script>
</head>

<body>
<header>
	<nav>
		<a href="#" id="trigger"> 
	        <span></span>
	        <span></span>
	        <span></span>
	    </a>
	    <div class="topmenu">
        	<ul>
<%	if(id != null) { %>
	        	<li><a href="../member/logout.jsp"> <span class="glyphicon glyphicon-log-out"></span> </a></li>
	        	<li><a href="../member/memberUpdate.jsp"> <span class="glyphicon glyphicon-edit"></span> </a></li>
<%	}else { %>
				<li><a href="../member/login.jsp"> <span class="glyphicon glyphicon-log-in"></span> </a></li>
	            <li><a href="../member/member.jsp"> <span class="glyphicon glyphicon-user"></span> </a></li>
<%	} %>
			</ul>
        </div>
	    <h1><a href="../index.jsp"><img src="../imgs/hd-logo.png"></a></h1>
	</nav>
</header>
<div class="clear"></div>

<%// FlexSlider:start %>
<section>
	<div class="flexslider">	
        <ul class="slides">
            <li><a href="#"><img src="../imgs/slide1.jpg" alt="start space travel"></a></li>
            <li><a href="#"><img src="../imgs/slide2.jpg" alt="byeolmaro observatory"></a></li>           
        </ul>        
    </div>    
</section>
<%// FlexSlider:end %>
