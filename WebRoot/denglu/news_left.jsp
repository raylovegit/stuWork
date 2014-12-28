<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	<script type="text/javascript" language="javascript" src="${ctx}/js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="${ctx}/js/jquery.treeview.js" ></script>
<link rel="stylesheet" href="${ctx}/css/jquery.treeview.css" />
<link rel="stylesheet" href="${ctx}/css/screen.css" />
<script type="text/javascript">
$(document).ready(function()
{
	//slides the element with class "menu_body" when paragraph with class "menu_head" is clicked 
	$("#firstpane p.menu_head").click(function()
    {
		$(this).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
	});
		$(".red").treeview({
			animated: "fast",
			collapsed: true,
			unique: true,
			toggle: function() {
				window.console && console.log("%o was toggled", this);
			}
		});
});
</script>
<style type="text/css">
body {
	margin: 10px auto;
	font: 75%/120% Verdana,Arial, Helvetica, sans-serif;
}
.menu_list {	
	width: 160px;
}
.menu_head {
	cursor: pointer;
	position: relative;
	margin:1px;
    font-weight:bold;
    background: #eef4d3 url(images/menu3.gif) no-repeat;

}
.menu_body {
	display:none;
	padding: 1em;
}
.menu_body a{
  display:block;
  color:#006699;
  padding-left:10px;
  text-decoration:none;
}
.menu_body a:hover{
  color: #000000;
  text-decoration:underline;
  }
  
.menu_head{
	width: 160px;
	height:25px;
	border: 1px solid #ccc;
	margin: 0px;
	display:block;
	text-align:center;
	line-height:25px;
	}
	
.menu_head:link, .menu_head:visited {
	color: #888;
	display: block;
	background: url(images/menu3.gif);
	}
	
.menu_head:hover, .menu_head:active {
	color: #283A50;
	background: url(images/menu3.gif) 0 -26px;
	}
</style>
  </head>
  
  <body>
  <div style="float:left"> <!--This is the first division of left-->
  <div id="firstpane" class="menu_list"> <!--Code for menu starts here-->
		<p class="menu_head">新闻管理</p>
		<div class="menu_body">
            <ul class="red">
            <li><span>计划总结</span>
            <ul>
            <li><span><a href="${ctx}/newsAction_list.action?type=1&flag=1" target="main">每月计划</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=1&flag=2" target="main">每月总结</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=1&flag=3" target="main">年度计划</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=1&flag=4" target="main">年度总结</a></span></li>
            </ul></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=2&flag=1" target="main">通知公告</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=3&flag=1" target="main">学工要闻</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=4&flag=1" target="main">信息通报</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=5&flag=1" target="main">本周安排</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=6&flag=1" target="main">本周值班</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=7&flag=1" target="main">本周工作督办</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=8&flag=1" target="main">政工风采</a></span></li>
            <li><span><a href="${ctx}/newsAction_list.action?type=10&flag=1" target="main">学子精英</a></span></li>
            <li><span><a href="${ctx}/newsAction_preUpdate.action?type=11&flag=1&ids=100" target="main">资料下载</a></span></li>
            <li><span>院系动态</span>
            <ul>
            <li><span><a href="${ctx}/newsAction_list.action?type=9&flag=1" target="main">新闻管理</a></span></li>
            <li><span><a href="${ctx}/collegeAction_verifyList.action" target="main">审核新闻</a></span></li>
            </ul></li>
            </ul>
		</div>
		<p class="menu_head">用户管理</p>
		<div class="menu_body">
            <ul class="red">
            <li><span><a href="${ctx}/userAction_list.action" target="main">用户管理</a></span></li>
            </ul>
		</div>
		<p class="menu_head">留言管理</p>
		<div class="menu_body">
         <ul class="red">
             <li><span><a href="${ctx}/messageAction_list.action" target="main">留言管理</a></span></li>
            </ul>
       </div>
       <p class="menu_head">数据备份</p>
		<div class="menu_body">
         <ul class="red">
            <li><span><a href="${ctx}/backupAction_list.action" target="main">数据备份</a></span></li>
            </ul>
       </div>
       <p class="menu_head">其他信息</p>
		<div class="menu_body">
         <ul class="red">
              <li><span>部门概况</span>
              <ul>
              <li><span><a href="${ctx}/newsAction_preUpdate.action?type=12&flag=1&ids=1" target="main">部门简介</a></span></li>
              <li><span><a href="${ctx}/newsAction_preUpdate.action?type=12&flag=2&ids=2" target="main">机构设置</a></span></li>
              <li><span><a href="${ctx}/newsAction_preUpdate.action?type=12&flag=3&ids=3" target="main">工作人员</a></span></li>
              <li><span><a href="${ctx}/newsAction_preUpdate.action?type=12&flag=4&ids=4" target="main">工作职责</a></span></li>
              </ul></li>
              <li><span>规章制度</span>
              <ul>
              <li><span><a href="${ctx}/newsAction_preUpdate.action?type=13&flag=1&ids=5" target="main">国家法规</a></span></li>
              <li><span><a href="${ctx}/newsAction_preUpdate.action?type=13&flag=2&ids=6" target="main">校内规章</a></span></li>
              </ul></li>
              <li><span><a href="${ctx}/newsAction_preUpdate.action?type=14&flag=1&ids=7" target="main">办公指南</a></span></li>
          </ul>
       </div>
  </div>  <!--Code for menu ends here-->
</div>
  </body>
</html>
