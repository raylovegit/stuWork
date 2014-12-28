<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
  <head>
    <title>My JSP 'creat.jsp' starting page</title>
    <link href="style/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/validationEngine.jquery.css"
			type="text/css" media="screen" title="no title" charset="utf-8" />
  </head>
  <%@ include file="/common/js.jsp"%>
<body>
<table width="100%" cellpadding="0" cellspacing="0">
  <tr>
    <td>
      <table width="100%" height="269" cellpadding="0" cellspacing="0" class="table">
        <tr>
          <td valign="top">
            <table width="100%" class="top" cellpadding="0" cellspacing="0">
              <tr>
                <td>当前位置:&nbsp;<a href="#">分类一</a>&nbsp;>>&nbsp;<a href="#">分类二</a></td>
              </tr>
            </table>
            <form id="validateform" action="${ctx}/userAction_create.action" method="post">
            <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr bgcolor="#E7E7E7">
                    <td height="24" colspan="2" bgcolor="#EEF4EA">&nbsp;用户添加&nbsp;</td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">用户名：</td>
                    <td width="22%" align="left"><input id="aa" type="text" name="user.userName" class="validate[required]"/></td>
                </tr>
				 <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">密码：</td>
                    <td width="22%" align="left"><input type="text" name="user.userPassword"/></td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">用户类型：</td>
                    <td width="22%" align="left">
                    <input  type="radio" name="user.userType" value="0" />管理员
                    <input  type="radio" name="user.userType" value="1"  checked />用户
                    </td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">用户所属院系：</td>
                    <td width="22%" align="left">
                    <select name="user.userClass">
                    		<option value="">选择所属院系</option>
							<option value="政法学院">政法学院</option>
							<option value="经济与管理学院">经济与管理学院</option>
							<option value="文学院">文学院</option>
							<option value="外国语学院">外国语学院</option>
							<option value="历史文化学院">历史文化学院</option>
							<option value="教育科学学院">教育科学学院</option>
							<option value="数学与统计学院">数学与统计学院</option>
							<option value="物理与电子科学学院">物理与电子科学学院</option>
							<option value="化学与环境工程学院">化学与环境工程学院</option>
							<option value="生命科学学院">生命科学学院</option>
							<option value="计算机科学与技术学院">计算机科学与技术学院</option>
							<option value="教育信息与技术学院">教育信息与技术学院</option>
							<option value="美术学院">美术学院</option>
							<option value="音乐学院">音乐学院</option>
							<option value="体育学院">体育学院</option>
							<option value="控制科学与工程系">控制科学与工程系</option>
							<option value="地理科学系">地理科学系</option>
                    </select></td>
                </tr>
                <tr bgcolor="#FAFAF1">
                <td height="28" colspan="2">
                    &nbsp;
                    <input type="submit" class="coolbg" value="提交"/>
                </td>
                </tr>
                <tr align="right" bgcolor="#EEF4EA">
                    <td height="36" colspan="2" align="center"><!--翻页代码 --></td>
                </tr>
                </table>
				</form></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>