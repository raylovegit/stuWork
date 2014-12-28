<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>湖北师范学院学生工作处</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/stuHover.js"></script>
</head>
<body>
<div id="header">
<div id="nav">
<ul>
<li><a href="indexAction_selectAll.action">网站首页</a></li>
<li><a href="http://www.hbnu.edu.cn">学校主页</a></li>
 <li><a href="http://www.news.hbnu.edu.cn/">磁湖新闻网</a></li>
</ul>
</div>
<div id="search">
<select onChange="if(this.selectedIndex && this.selectedIndex!=0){window.open(this.value);}this.selectedIndex=0;">
<option>--站内链接---------</option>
			<option value="http://www.dzb.hbnu.edu.cn/">党政办公室</option>
			<option value="http://www.zzb.hbnu.edu.cn/">组织部</option>
			<option value="http://www.xctzb.hbnu.edu.cn/">宣传统战部</option>
			<option value="http://www.youth.hbnu.edu.cn/">团委</option>
			<option value="http://www.jwc.hbnu.edu.cn/">教务处</option>
			<option value="http://www.grad.hbnu.edu.cn/">研究生处</option>
			<option value="http://www.zsxx.hbnu.edu.cn/">招生就业处</option>
			<option value="http://www.baowei.hbnu.edu.cn/">保卫部(处)</option>
			<option value="http://www.chl.hbnu.edu.cn/">文学院</option>
			<option value="http://www.pl.hbnu.edu.cn/">政法学院</option>
			<option value="http://www.fld.hbnu.edu.cn/">外国语学院</option>
			<option value="http://www.ls.hbnu.edu.cn/">历史文化学院</option>
			<option value="http://www.jy.hbnu.edu.cn/">教育科学学院</option>
			<option value="http://www.emc.hbnu.edu.cn/">经济与管理学院</option>
			<option value="http://www.art.hbnu.edu.cn/">美术学院</option>
			<option value="http://www.md.hbnu.edu.cn/">音乐学院</option>
			<option value="http://www.math.hbnu.edu.cn/">数学与统计学院</option>
			<option value="http://www.phy.hbnu.edu.cn/">物理与电子科学学院</option>
			<option value="http://www.chem.hbnu.edu.cn/">化学与环境工程学院</option>
			<option value="http://www.bio.hbnu.edu.cn/">生命科学学院</option>
			<option value="http://www.cs.hbnu.edu.cn/">计算机科学与技术学院</option>
			<option value="http://www.et.hbnu.edu.cn/">教育信息与技术学院</option>
			<option value="http://www.ty.hbnu.edu.cn/">体育学院</option>
			<option value="http://www.kz.hbnu.edu.cn/">控制科学与工程系</option>
			<option value="http://www.geog.hbnu.edu.cn">地理科学系</option>
			<option value="http://www.cce.hbnu.edu.cn/">继续教育学院</option>
			<option value="http://www.gj.hbnu.edu.cn/">国际学院</option>
			<option value="http://www.wlxy.hbnu.edu.cn/">文理学院</option>
</select>
<img src="images/searchtu.jpg" />
<select onChange="if(this.selectedIndex && this.selectedIndex!=0){window.open(this.value);}this.selectedIndex=0;">
<option value="http://www.moe.gov.cn/">---站外链接---------</option>
<option value="http://www.moe.gov.cn/">教育部</option>
<option value="http://www.chsi.com.cn/">中国高等教育学生信息网</option>
<option value="http://www.chinaedu.edu.cn/">中国教育信息网</option>
<option value="http://www.chinaedunet.com/">中国教育网</option>
<option value="http://www.univs.cn/">中国大学生在线</option>
<option value="http://www.hbe.gov.cn/">湖北省教育厅</option>
<option value="http://www.e21.cn/">湖北教育信息网</option>
<option value="http://www.ehust.net/">华中科技大学学工在线</option>
<option value="http://xgb.whu.edu.cn/">武汉大学学生工作部</option>
<option value="http://xgb.ccnu.edu.cn/">华中师范大学学生工作部</option>
<option value="http://xuegong.hubu.edu.cn/">湖北大学学工在线</option>
</select>
<img src="images/searchtu.jpg" />
</div>

<ul class="menu" id="menu">
	<li>
		<a href="" class="menulink">部门概况 </a>
	<ul>
			<li><a href="${ctx}/stuWork/indexAction_read.action?id=1&type=12&flag=1">部门简介</a></li>
			<li><a href="${ctx}/stuWork/indexAction_read.action?id=2&type=12&flag=2">机构设置</a></li>
			<li><a href="${ctx}/stuWork/indexAction_read.action?id=3&type=12&flag=3">工作人员</a></li>
			<li><a href="${ctx}/stuWork/indexAction_read.action?id=4&type=12&flag=4">工作职责</a></li>
		</ul>
	</li>
  <li>
		<a href="" class="menulink">规章制度 </a>
		<ul>
			<li><a href="${ctx}/stuWork/indexAction_read.action?id=5&type=13&flag=1">国家法规</a></li>
			<li><a href="${ctx}/stuWork/indexAction_read.action?id=6&type=13&flag=2">校内规章</a></li>
		</ul>
	</li>
  <li>
		<a href="${ctx}/stuWork/indexAction_read.action?id=7&type=14&flag=1" class="menulink">办公指南</a>
	</li>
  <li>
		<a href="" class="menulink">计划总结 </a>
		<ul>
			<li><a href="${ctx}/stuWork/indexAction_list.action?type=1&flag=1">每月计划</a></li>
			<li><a href="${ctx}/stuWork/indexAction_list.action?type=1&flag=2">每月总结</a></li>
			<li><a href="${ctx}/stuWork/indexAction_list.action?type=1&flag=3">年度计划</a></li>
			<li><a href="${ctx}/stuWork/indexAction_list.action?type=1&flag=4">年度总结</a></li>
		</ul>
	</li>
  <li>
		<a href="${ctx}/stuWork/indexAction_read.action?id=100&type=11&flag=1" class="menulink">资料下载 </a>
	</li>
</ul>
<script type="text/javascript">
	var menu=new menu.dd("menu");
	menu.init("menu","menuhover");
</script>
</div>

</body>
</html>
