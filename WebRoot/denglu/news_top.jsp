<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<title>湖北师范学院学生工作处后台管理系统</title>
<script type="text/javascript" src="${ctx }/js/top.js"></script>
<script type="text/javascript">
		window.onload=function(){
			home("home","mainFrame","news_center.jsp");
			back("back","mainFrame");
			go("go","mainFrame");
			logout("logout","${ctx}/login_logout.action","${ctx}/login.jsp");
		}
	</script>
</head>
<style>
* { margin:0 auto; padding:0; border:0;}
body { font:12px "宋体"; color:#FFF;}
.lable { background:url(${ctx}/images/top_lable.jpg) no-repeat; width:160px; height:28px; float:left;}
 .lable p { margin-top:8px;}
.menu { background:url(${ctx}/images/top_menu.jpg) no-repeat; width:348px; height:28px; float:right;}
 .menu ul { margin:8px 0 0 45px; list-style:none;}
 .menu li { display:inline;}
 .menu a { float:left; text-decoration:none; padding-left:2px;}
 .menu a:hover {text-decoration:none;}
 .menu a span { display:block; padding-right:10px; color:#FFF; }
 .menu a:hover span { color:#004c7e; }
.menu_left { background:url(${ctx}/images/menu_left.jpg) no-repeat; width:155px; height:22px; float:left; margin:3px 0 0 6px; text-align:center;}
 .menu_left p { margin-top:5px;} 
.menu_list { width:100%; height:25px;}
  .menu_list ul { margin:0; padding:4px 0 0 70px; list-style:none; }
    .menu_list li { display:inline; }
    .menu_list a { float:left; text-decoration:none; }
    .menu_list a span { display:block; padding:4px 10px 0 10px; color:#004c7e; }
    .menu_list a:hover span { color:#FFF; border:1px solid #004c7e;}
   .menu_list a:hover { background:url(${ctx}/images/menu_list.jpg) repeat-x; }
</style>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td background="${ctx}/images/top_bg.jpg" width="289" height="57">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="${ctx}/images/top_lf.jpg" /></td>
        </tr>
      </table>
    </td>
    <td background="${ctx}/images/top_bg.jpg">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="29"></td>
        </tr>
        <tr>
          <td width="50%" height="28">
            <div class="lable">
              <p>湖北师范学院学生工作处</p>
            </div>
          </td>
          <td>
            <div class="menu">
              <ul> 
                <li><a href=""><span id="home">首页</span></a></li>
                <li><a href="#"><span id="back">后退</span></a></li>
                <li><a href="#"><span id="go">前进</span></a></li>
                <li><a href="#"><span id="logout">退出</span></a></li>
              </ul>
            </div>
          </td>
          <td width="18"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="100%" height="25" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td background="${ctx}/images/menu_bg.jpg" width="165">
      <div class="menu_left">
        <p>当前用户：${userLogin.userName}</p>
      </div>
    </td>
    <td background="${ctx}/images/menu_bg.jpg">&nbsp;</td>
  </tr>
</table>
</body>
</html>
