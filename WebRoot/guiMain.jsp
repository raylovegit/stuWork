<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="/common/taglibs.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>湖北师范学院学生工作处</title>

<link href="css/layout.css" rel="stylesheet" type="text/css" />
</head>
  <%@ include file="/common/js.jsp"%>
<script type="text/javascript">
    	$(function(){
		  			if(${pageNow == 1})
		  					$("#buttonstyle2").attr("disabled","true"); 
		  			 if(${allPages == pageNow})
		  					$("#buttonstyle3").attr("disabled","true"); 
		  		});
  </script>
<body>
<div id="container2">
<div id="content2">
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
<div id="rightbar2">
<div id="righttop"></div>
<div id="side2">
<p class="text1" >当前位置：<a href="${ctx }/indexAction_selectAll.action">主页</a>><span style="color:#FF0000;" >${navigator}</span></p>
<p class="text"><img src="images/right1.gif" />&nbsp;&nbsp;${navigator}</p>
<div id="subNav2"><span style="float:left; padding-left:10px;">文章标题</span><span style=" margin-left:390px;">点击次数</span><span style=" margin-left:100px; ">发布时间</span></div>
<ul>
	<c:forEach items="${nlist}" var="n" varStatus="s">
	<li><span style="float:right; padding-right:10px;">${n.newsDate }</span><span style="float:left;"><img src="images/right3.gif" />
 			<c:choose>
       		 <c:when test="${n.newsImage==1}"><img src="images/tpxw.gif"/></c:when>
       		 <c:otherwise>&nbsp;&nbsp;</c:otherwise>
       		 </c:choose>
<a href="indexAction_read.action?id=${n.newsId }&type=${type}&flag=${flag}">
<c:choose><c:when test="${fn:length(n.newsTitle) gt 30}">
        	${fn:substring(n.newsTitle,0,30)}...</c:when>
        	<c:otherwise>
        	${n.newsTitle }
        	</c:otherwise>
        	</c:choose></a></span>
	<span style=" float:right; margin-right:125px;">${n.newsHit }</span></li>
	</c:forEach>
</ul>
<div id="douwn">
<div id="buttonstyle4">有${allCount}条新闻&nbsp;&nbsp;共${allPages}页&nbsp;&nbsp;当前第${pageNow}页</div>
<div class="inline"><input  type="button" value="上一页"  id="buttonstyle2" onclick="location.href='${ctx}/indexAction_list.action?pageNow=${pageNow-1}&type=${type}&flag=${flag}'"/></div>
<div class="inline"><input  type="button" value="下一页" id="buttonstyle3" onclick="location.href='${ctx}/indexAction_list.action?pageNow=${pageNow+1}&type=${type}&flag=${flag}'"/></div>
</div>

</div>
<div id="rightdown"></div>
</div>
</div>
</div>
</body>
</html>
