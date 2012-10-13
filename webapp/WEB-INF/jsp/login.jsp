<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ include file="/WEB-INF/jsp/include/tags.jspf"%>
<html>
<head>
<title>로그인 :: SLiPP</title>
<link href="${url:resource('/stylesheets/main.css')}" rel="stylesheet">
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h2>Sustainable Life, Programming, Programmer</h2>
			<p>삶과 일의 균형을 맞추면서 행복하게 살 수 있는 세상을 꿈꿉니다.</p>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span6">
				<form class="login" action="/signin/facebook" method="POST">
					<p>
						<input class="btn btn-primary btn-large pull-right" type="submit"
							value="페이스북 계정으로 로그인" />
					</p>
				</form>
			</div>
			<div class="span6">
				<form class="login" action="/signin/twitter" method="POST">
					<p>
						<input class="btn btn-info btn-large pull-left" type="submit"
							value="트위터 계정으로 로그인" />
					</p>
				</form>
			</div>
		</div>
	</div>	
</body>
</html>