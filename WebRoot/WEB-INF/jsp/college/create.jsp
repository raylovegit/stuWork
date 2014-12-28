<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
  <head>
    <title>My JSP 'creat.jsp' starting page</title>
    <link href="style/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/validationEngine.jquery.css"
			type="text/css" media="screen" title="no title" charset="utf-8" />
  </head>
  <%@ include file="/common/js.jsp"%>
  <script type="text/javascript"
			src="${ctx}/js/My97DatePicker/WdatePicker.js"></script>
<body>
<table width="100%" cellpadding="0" cellspacing="0">
  <tr>
    <td>
      <table width="100%" height="269" cellpadding="0" cellspacing="0" class="table">
        <tr>
          <td valign="top">
            <table width="100%" class="top" cellpadding="0" cellspacing="0">
              <tr>
                <td>当前位置:&nbsp;>>&nbsp;院系动态</td>
              </tr>
            </table>
            <form id="validateform" action="${ctx}/collegeAction_create.action" method="post">
            <!-- 	colFlag=0代表是仅保存了新闻，还没有提交到学工
	            	colFlag=1代表提交到学工，未审核
	            	colFlag=2代表提交到学工，审核通过
	            	colFlag=3代表提交到学工，审核未通过
             -->
            <input type="hidden" name="college.colFlag" value="0" />
            <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr bgcolor="#E7E7E7">
                    <td height="24" colspan="2" bgcolor="#EEF4EA">&nbsp;新闻添加&nbsp;</td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">标题：</td>
                    <td width="22%" align="left"><input id="aa" size="60" type="text" name="college.colTitle" class="validate[required]"/></td>
                </tr>
				 <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">作者：</td>
                    <td width="22%" align="left"><input type="text" name="college.colAuthor"/></td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">来源：</td>
                    <td width="22%" align="left"><input type="text" name="college.colSource"/></td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">图片新闻：</td>
                    <td width="22%" align="left">
                    <select name="college.colImage">
                    <option value="0">否</option>
                    <option value="1">是</option>
                    </select>
                    </td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">院系：</td>
                    <td width="22%" align="left">
						<input type="text" name="college.colType" value="${userLogin.userClass}" readonly="readonly" />
					</td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">日期：</td>
                    <td width="22%" align="left">
                    <input type="text" id="date" name="college.colDate" />
                    <img onclick="WdatePicker({el:'date'})" src="${ctx}/js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle" />
                    </td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">内容：</td>
                    <td width="22%" align="left"><FCK:editor instanceName="college.colContent" basePath="/fckeditor" width="850" height="500" value=" "></FCK:editor></td>
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