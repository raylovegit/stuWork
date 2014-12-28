<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="/common/taglibs.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>湖北师范学院学生工作处</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<script src="js/zhedie.js" type="text/javascript"></script>
</head>

<body>
<div id="banner"><center>
  <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="959" height="202">
    <param name="movie" value="flash/banner.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="9.0.45.0" />
    <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="flash/banner.swf" width="959" height="202">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="9.0.45.0" />
      <param name="expressinstall" value="Scripts/expressInstall.swf" />
      <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
      <div>
        <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object>
</center></div>
<div id="content">
<div id="top">
<div id="topLeft">
<div id="notic">
	<div id="noticmain">
    	<div id="noticTop"><p>通知公告<span><a href="${ctx}/indexAction_list.action?type=2&flag=1">更多>></a></span></p></div>
        <div id="noticDown">
        <ul>
        <c:forEach items="${list[1] }" var="n">
        	<li><img src="images/tu.jpg" class="imgicon" />
        	 <c:choose>
       		 <c:when test="${n.newsImage==1}"><img src="images/tpxw.gif"/></c:when>
       		 <c:otherwise></c:otherwise>
       		 </c:choose>
        	<a href="indexAction_read.action?id=${n.newsId }&type=2&flag=1">
        	<c:choose><c:when test="${fn:length(n.newsTitle) gt 13}">
        	${fn:substring(n.newsTitle,0,13)}...</c:when>
        	<c:otherwise>
        	${n.newsTitle }
        	</c:otherwise>
        	</c:choose>
        	</a></li>
        </c:forEach>
        </ul></div></div>
    </div>
<div id="news">	
		<div id="newsmain">
          <div id="newsTop"><p>学工要闻<span><a href="${ctx}/indexAction_list.action?type=3&flag=1">更多>></a></span></p></div>
          <div id="newsDown">
        <ul>
        <c:forEach items="${list[2] }" var="n">
       		 <li><span class="list_date">${n.newsDate}</span><img src="images/tu.jpg" />
       		  <c:choose>
       		 <c:when test="${n.newsImage==1}"><img src="images/tpxw.gif"/></c:when>
       		 <c:otherwise>&nbsp;&nbsp;</c:otherwise>
       		 </c:choose>
       		 <a href="indexAction_read.action?id=${n.newsId }&type=3&flag=1">
       		 <c:choose><c:when test="${fn:length(n.newsTitle) gt 19}">
        	${fn:substring(n.newsTitle,0,19)}...</c:when>
        	<c:otherwise>
        	${n.newsTitle }
        	</c:otherwise>
        	</c:choose>
       		 </a></li>
        </c:forEach>
          </ul>
        </div>
		</div>
</div>
</div>
<div id="topRight">
<div id="kuaishu">
<div id="kuaimain">
	  <div id="kuaiTop"><p><a href="#">快速通道</a></p></div>
      <div id="kuaiDown">
      <p><a href="#">新生入学教育网</a></p>
      <p><a href="#">思想政治教育网</a></p>
      <p><a href="#">日常事务管理网</a></p>
      <p><a href="#">心理健康教育网</a></p>
      <p><a href="#">阳光资助网</a></p>
      <p><a href="#">青年在线网 </a></p>  
      </div>
    </div>
	</div>
<div id="subNav">
<div class="right">

<!--滑动的红色js导航-->
      <div id="mainlist">
        <ul>
          <li class="list"><a href="#" style="text-align:center;">本 周 安 排</a>
            <ul class="one">
              <c:forEach items="${list[4] }" var="n">
	            <li ><a href="indexAction_read.action?id=${n.newsId }&type=5&flag=1">
	            <c:choose><c:when test="${fn:length(n.newsTitle) gt 10}">
	        	${fn:substring(n.newsTitle,0,10)}...</c:when>
	        	<c:otherwise>
	        	${n.newsTitle }
	        	</c:otherwise>
	        	</c:choose>
	            </a></li>
	        	</c:forEach>
	        	<li ><span><a class="more" href="${ctx}/indexAction_list.action?type=5&flag=1">更多>></a></span></li>
            </ul>
          </li>
           <li class="list"><a href="#" style="text-align:center;">本 周 值 班</a>
            <ul class="two">
            <c:forEach items="${list[5] }" var="n">
            <li ><a href="indexAction_read.action?id=${n.newsId }&type=6&flag=1">
            <c:choose><c:when test="${fn:length(n.newsTitle) gt 10}">
        	${fn:substring(n.newsTitle,0,10)}...</c:when>
        	<c:otherwise>
        	${n.newsTitle }
        	</c:otherwise>
        	</c:choose>
            </a></li>
        	</c:forEach>
        		<li ><span><a class="more" href="${ctx}/indexAction_list.action?type=6&flag=1">更多>></a></span></li>
            </ul>
          </li>
           <li class="list"><a href="#" style="text-align:center;">本周工作督办</a>
            <ul class="three">
                <c:forEach items="${list[6] }" var="n">
	            <li ><a href="indexAction_read.action?id=${n.newsId }&type=7&flag=1">
			<c:choose><c:when test="${fn:length(n.newsTitle) gt 10}">
        	${fn:substring(n.newsTitle,0,10)}...</c:when>
        	<c:otherwise>
        	${n.newsTitle }
        	</c:otherwise>
        	</c:choose>
			</a></li>
	        	</c:forEach>
	        	<li ><span><a class="more" href="${ctx}/indexAction_list.action?type=7&flag=1">更多>></a></span></li>
            </ul>
          </li>
        </ul>
      </div>
    </div></div>
	</div>
</div>
<!---->
<div id="down">
<div id="downLeft">
<div id="Information">
	<div id="Informationmain">
    	<div id="InformationTop"><p>信息通报<span><a href="${ctx}/indexAction_list.action?type=4&flag=1">更多>></a></span></p></div>
        <div id="InformationDown">
        <ul>
        <c:forEach items="${list[3] }" var="n">
        	<li><img src="images/tu.jpg" />
        	 <c:choose>
       		 <c:when test="${n.newsImage==1}"><img src="images/tpxw.gif"/></c:when>
       		 <c:otherwise>&nbsp;&nbsp;</c:otherwise>
       		 </c:choose>
        	<a href="indexAction_read.action?id=${n.newsId }&type=4&flag=1">
        	<c:choose><c:when test="${fn:length(n.newsTitle) gt 13}">
        	${fn:substring(n.newsTitle,0,13)}...</c:when>
        	<c:otherwise>
        	${n.newsTitle }
        	</c:otherwise>
        	</c:choose></a></li>
        </c:forEach>
          </ul>
        </div>
        </div>
    </div>
<div id="Dynamic">	
		<div id="Dynamicsmain">
          <div id="DynamicTop"><p>院系动态<span><a href="${ctx}/indexAction_list.action?type=9&flag=1">更多>></a></span></p></div>
           <div id="DynamicDown">
        <ul>
        <c:forEach items="${list[8] }" var="n">
       		 <li><span class="list_date">${n.newsDate}</span><img src="images/tu.jpg" />
       		  <c:choose>
       		 <c:when test="${n.newsImage==1}"><img src="images/tpxw.gif"/></c:when>
       		 <c:otherwise>&nbsp;&nbsp;</c:otherwise>
       		 </c:choose>
       		 <a href="indexAction_read.action?id=${n.newsId }&type=9&flag=1">
       		 <c:choose><c:when test="${fn:length(n.newsTitle) gt 19}">
        	${fn:substring(n.newsTitle,0,19)}...</c:when>
        	<c:otherwise>
        	${n.newsTitle }
        	</c:otherwise>
        	</c:choose></a></li>
        </c:forEach>
          </ul>
        </div>
		</div>
</div></div>

<div id="downRight">
<div id="images">
<div id="imagesmain">
	  <div id="imagesTop"><a href="${ctx}/indexAction_list.action?type=8&flag=1"><img src="images/tu.gif" /></a></div>
      <div id="imagesDown"><a href="${ctx}/indexAction_list.action?type=10&flag=1"><img src="images/tu1.gif" /></a>
      </div>
    </div>
	</div>
    <div id="xinxiang">
    <div id="tu1"><a href="${ctx}/indexAction_megList.action"></a><a href="${ctx}/indexAction_megList.action"><img  src="images/998_25.gif" /></a></div>
    <div id="tu2"><a href="login.jsp"><img src="images/998_27.gif" /></a></div>
    <div id="tu3"><a href="#"><img  src="images/12.jpg" /></a></div>
    <div id="tu4"><a href="#"><img src="images/2.jpg" /></a></div>
    <div id="tu5"><a href="#"><img src="images/3.jpg" /></a></div>
    </div>
</div>
</div>
</div>
<script type="text/javascript">
<!--
swfobject.registerObject("FlashID");
//-->
</script>
</body>
</html>
