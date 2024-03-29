<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:url value="/resources/css/layout/navi.css" var="naviCSS" />
<c:url value="/resources/image/layout/whiteHomeBTN.png" var="homeBTN" />
<c:url value="/resources/image/layout/whiteTopBTN.png" var="topBTN" />
<link rel="stylesheet" href="${naviCSS}" />
<link rel="stylesheet" href="${homeBTN}" />
<link rel="stylesheet" href="${topBTN}" />

   <div id="navibar">
      <ul style="padding:0 0 0 0;">
      	<li style="line-height:300%;" ><a href="/royal/palace/gyeongbokmain">경복궁</a></li>
		<li style="line-height:300%;" ><a href="/royal/palace/deoksumain">덕수궁</a></li>
		<li style="line-height:300%;" ><a href="/royal/palace/changgyeongmain">창경궁</a></li>
		<li style="line-height:300%;" ><a href="/royal/palace/changdeokmain">창덕궁</a></li>
		<li style="line-height:300%;" ><a href="/royal/palace/jongmyomain">종 묘</a></li>
		<li style="line-height:300%;" >
			<a href="/royal/main/home" >
			<img style="width:auto; height:50px; padding-top:10px" src="${homeBTN}"/>
			</a>
		</li>
		<li style="line-height:300%;" >
			<a href="javascript:window.scrollTo(0,0);" style="padding-top:10px">
			<img style="width:auto; height:70px; 
				 padding-top:10px;" src="${topBTN}"/>
			</a>
		</li>
      </ul>
   </div>
   
  
