<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>湖北师范学院学生工作处后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
<!--
body { margin:0 auto; padding:0;}
-->
</style>
</head>
<body style="overflow:hidden">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
  <tr>
    <td width="162" id=frmTitle noWrap name="fmTitle" align="center" valign="top">
      <iframe name="leftFrame" frameborder="0" scrolling="no" style="height:100%; width:160px;" id="leftFrame" title="leftFrame" src="${ctx }/denglu/news_left.jsp"> 浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
    </td>
    <td width="4" style="width:4px;" bgcolor="004C7E"></td>
    <td width="5"></td>
    <td align="center" valign="top">
      <iframe name="main" id="main" frameborder="0" scrolling="yes"  style="height:100%;width:100%;" src="${ctx }/collegeAction_verifyList.action"> 浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
    </td>
  </tr>
</table>
</html>
