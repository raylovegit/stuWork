<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>湖北师范学院学生工作处</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="container3">
<div id="content3">
<ul>
<li style="background:#B8152A;"><a href="${ctx}/indexAction_list.action?type=2&flag=1"><span style="color:#FFFFFF; font-weight:bold;">通知公告</span></a></li>
<li style="background:#B9B7B8;"><a href="${ctx}/indexAction_list.action?type=3&flag=1">学工要闻</a></li>
<li style="background:#B8152A;"><a href="${ctx}/indexAction_list.action?type=4&flag=1"><span style="color:#FFFFFF; font-weight:bold;">信息通报</span></a></li>
<li style="background:#B9B7B8;"><a href="${ctx}/indexAction_list.action?type=5&flag=1">本周安排</a></li>
<li style="background:#B8152A;"><a href="${ctx}/indexAction_list.action?type=6&flag=1"><span style="color:#FFFFFF; font-weight:bold;">本周值班</span></a></li>
<li style="background:#B9B7B8"><a href="${ctx}/indexAction_list.action?type=7&flag=1">本周工作督办</a></li>
<li style="background:#B8152A;"><a href="${ctx}/indexAction_list.action?type=8&flag=1"><span style="color:#FFFFFF; font-weight:bold;">政工风采</span></a></li>
<li style="background:#B9B7B8;"><a href="${ctx}/indexAction_list.action?type=10&flag=1">学子精英</a></li>
<li style="background:#B8152A;"><a href="${ctx}/indexAction_list.action?type=9&flag=1"><span style="color:#FFFFFF; font-weight:bold;">院系动态</span></a></li>
</ul>
<div id="rightbar3">
<div id="righttop"></div>
<div id="side2">
<p class="text1" >当前位置：<a href="${ctx }/indexAction_selectAll.action">主页</a>><span style="color:#AC192A;" ><a href="${ctx}/indexAction_list.action?type=${type}&flag=${flag}">${navigator}</a></span></p>
<p class="text"><img src="images/right1.gif" />&nbsp;&nbsp;${navigator}</p>


<c:if test="${mark=='1'}">
<p class="text3">${nlist[0].newsTitle}</p>
<p class="text2">时间：${nlist[0].newsDate}&nbsp;&nbsp;来源：${nlist[0].newsSource} &nbsp;&nbsp;作者：${nlist[0].newsAuthor }&nbsp;&nbsp; 点击数：${nlist[0].newsHit }</p>
</c:if>

<div class="text4">${nlist[0].newsContent }</div>

<ul>
<c:if test="${mark=='1'}">
		<li><span style="color:#B01532;">上一篇：</span>
		<c:choose>
		<c:when test="${nlist[2]==null}"><font color="gray">没有文章</font></c:when>
		<c:otherwise><a href="indexAction_read.action?id=${nlist[2].newsId }&type=${nlist[2].newsType}&flag=${nlist[2].newsFlag}">
		<c:choose><c:when test="${fn:length(nlist[2].newsTitle) gt 30}">
        	${fn:substring(nlist[2].newsTitle,0,30)}...</c:when>
        	<c:otherwise>
        	${nlist[2].newsTitle }
        	</c:otherwise>
        	</c:choose>
		</a></c:otherwise>
		</c:choose>
		</li>
		<li><span style="color:#B01532;">下一篇：</span>
		<c:choose>
		<c:when test="${nlist[1]==null}"><font color="gray">没有文章</font></c:when>
		<c:otherwise><a href="indexAction_read.action?id=${nlist[1].newsId }&type=${nlist[1].newsType}&flag=${nlist[1].newsFlag}">
		<c:choose><c:when test="${fn:length(nlist[1].newsTitle) gt 20}">
        	${fn:substring(nlist[1].newsTitle,0,20)}...</c:when>
        	<c:otherwise>
        	${nlist[1].newsTitle }
        	</c:otherwise>
        	</c:choose>
		</a></c:otherwise>
		</c:choose>
		</li>
</c:if>
</ul>
</div>
<div id="rightdown"></div>
</div>
</div>
</div>
</body>
</html>
