<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경복궁메인페이지</title>
</head>
<body>

	<jsp:include page="../../../layout/header.jsp"/>
	<jsp:include page="../../../layout/navibar.jsp"/>
	
	<h2>경복궁 메인 img</h2>
	
	<div style="margin:10px">
		<img src="" alt="이미지" />
		<a href="/royal/index/gb/history">경복궁소개, 역사</a>
	</div>
	<div style="margin:10px">
		<a href="/royal/index/gb/inner">경복궁 내부 건축물</a>
		<img src="" alt="이미지" />
	</div>
	<div style="margin:10px">
		<img src="" alt="이미지" />
		<a href="/royal/index/gb/guide">관람안내</a>
	</div>
	<div style="margin:10px">
		<a href="/royal/index/gb/reserve">해설*행사 예약</a>
		<img src="" alt="이미지" />
	</div>
	<jsp:include page="../../../layout/footer.jsp"/>
</body>
</html>