<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Login</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/theme.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Raleway:wght@100;500&display=swap');

:root {
	--primary-color: #000000;
	--secondary-color: #000000;
}

* {
	box-sizing: border-box;
}

body {
	background: #EDEDEE;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Raleway', sans-serif;
	
}

h1 {
	font-weight: bold;
	margin: 0;
}

h2 {
	text-align: center;
}

 p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	margin: 20px 0 30px;
}

a {
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
} 

button {
	border-radius: 20px;
	border: 1px solid var(--primary-color);
	background-color: var(--secondary-color);
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	text-transform: uppercase;
	cursor: pointer;
}

button:hover {
	transform: scale(1.05);
}

button.signup_btn {
	background-color: transparent;
	border-color: #FFFFFF;
}

button.login_btn {
	background-color: #FFFFFF;
	border-color: #000000;
	color: #000000;
}

form {
	background-color: rgba(0, 0, 0, 0.5);
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

input {
	background-color: #EDEDEE;
	border-radius: 10px;
	color: black;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.logincontainer {
	/* background-color: #fff; */
	/* display:table-cell;
  	vertical-align:middle; */
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	left: 25%;
	top: 20%;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
	overflow: hidden;
}

.form {
	position: absolute;
	top: 0;
	height: 100%;
}

.sign-in-container {
	left: 0;
	width: 50%;
}

.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
}

.overlay {
	background: #41C2CB;
	background: linear-gradient(to right, var(--secondary-color), var(--primary-color));
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
}

.overlay-right {
	right: 0;
}

.social-container {
	margin: 20px 0;
}

.social-container a {
	border: 1px solid var(--primary-color);
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}
.social-container a:hover{
	transform: scale(1.08);
}

input::placeholder {
	color: black;
}

footer {
	background-color: #000000;
}
</style>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
    $(document).ready(function() {
        let msg1 = "${requestScope.msg}";
        console.log(msg1);
        if (msg1 != "") {
            alert(msg1);
        } 
    })
</script>

<!-- Navigation -->
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
		<i class="fa fa-bars"></i>
		</button>
		<a class="navbar-brand page-scroll" href="index.html">
		미술관 </a>
	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
		<ul class="nav navbar-nav">
			<li>
			<a href="index.html">메인화면</a>
			</li>
			<li>
			<a href="auction.html">경매장</a>
			</li>
			<li>
			<a href="page-sample.html">굿즈샵</a>
			</li>
			<li>
			<a href="login.html">Login</a>
			</li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</div>
<!-- /.container -->
</nav>
<!-- Intro Header -->
<header class="intro">
	<div class="logincontainer">
		<div class="form sign-in-container">
			<form action="/login" method="post">
			<h1>Login</h1>
			<div class="social-container">
				<!-- <a href="https://rpbloggers.com/"><i class="fab fa-facebook-f"></i></a>
				<a href="https://rpbloggers.com/"><i class="fab fa-google-plus-g"></i></a>
				<a href="https://rpbloggers.com/"><i class="fab fa-linkedin-in"></i></a> -->
			</div>
			<input type="username" id="username" name="id" placeholder="아이디를 입력하세요">
			<input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
			<a href="https://rpbloggers.com/">비밀번호를 잊으셨습니까?</a>
			<button class="login_btn" type="submit">로그인</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Sign UP</h1>
				<p>지금 미술관의 새 회원으로 참여해보세요.</p>
				<button class="signup_btn" onclick="location.href='contact.html'">회원가입</button>
			</div>
		</div>
	</div>
</header>

</body>
</html>