<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/jsp/jsp_header.jsp" %><!doctype html>
<!--[if lt IE 7 ]><html dir="ltr" lang="<c:out value="${siteLang}"/>" class="no-js ie ie6 lte7 lte8 lte9"><![endif]-->
<!--[if IE 7 ]><html dir="ltr" lang="<c:out value="${siteLang}"/>" class="no-js ie ie7 lte7 lte8 lte9"><![endif]--> 
<!--[if IE 8 ]><html dir="ltr" lang="<c:out value="${siteLang}"/>" class="no-js ie ie8 lte8 lte9"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="<c:out value="${siteLang}"/>" class="no-js ie ie9 lte9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html dir="ltr" lang="<c:out value="${siteLang}"/>" class="no-js"><!--<![endif]-->
	<head>
		<meta charset="UTF-8">
		<title><c:out value="${documentTitle}" escapeXml="false"/></title>

		<jsp:include page="/WEB-INF/jsp/k2web/com/cop/masterskin/user/common_head.jsp"></jsp:include>

	</head>
	<body class="<c:out value="${masterSkinType}"/> _responsiveObj">
		<div id="_wrap">
			<div id="_wrapHeader">
				<header id="_header">
					<a href="http://www.kmu.ac.kr/main.jsp" target="_blank" id="gotoUniv" title="새창">계명대학교</a>
					<h2 id="_logo">
						<a href="/<c:out value="${siteId}"/>/index.<c:out value="${urlPattern}"/>"><img src="<c:out value="${masterSkinPath}"/>/images/logo.png" alt="logo"></a>
						<em>138계명대 학생군사교육단</em>
					</h2>
					<div id="wrapGnavi">
						<c:set var="url"><k:url value="/globalNavi/${siteId}/view"/></c:set><c:import url="${url}" charEncoding="utf-8"/>
					</div>
					<div id="mMenu">
						<button id="mMenuOpen" class="mMenuButton">메뉴열기</button>
						<button id="mMenuClose" class="mMenuButton hidden">메뉴닫기</button>
					</div>
					<div id="wrapGnb">
						<c:set var="url"><k:url value="/sitemenu/${siteId}/top"/></c:set><c:import url="${url}" charEncoding="utf-8"/>
					</div>
				</header>
			</div>
			<div id="_wrapVisual">
				<div id="_visual">
					<div class="_slogan">
						<strong>138계명대 학생군사교육단
						 </strong>
					</div>
				</div>
			</div>
			<div id="_wrapArticle">
				<div id="_container">
					<div id="_content">
						<div id="masterTab">
							<c:set var="url"><k:url value="/sitemenu/${siteId}/tab"/></c:set><c:import url="${url}" charEncoding="utf-8"/>
						</div>
						<div id="masterNavigation">
							<div class="location"><c:set var="url"><k:url value="/sitemenu/${siteId}/pageNavigation"/></c:set><c:import url="${url}" charEncoding="utf-8"/></div>
						</div>
						<div id="masterTitle">
							<h1>
								<c:out value="${documentTitle}" escapeXml="false"/>
							</h1>
						</div>
						<div id="masterEditor">
							<div id="contentsEditHtml">