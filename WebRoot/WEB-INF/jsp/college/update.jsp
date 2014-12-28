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
                <td>当前位置:&nbsp;&nbsp;>>&nbsp;${userClass}</td>
              </tr>
            </table>
            <form id="validateform" action="${ctx}/collegeAction_update.action?pageNow=${pageNow}" method="post">
            <input type="hidden" name="college.colId" value="${college.colId}" />
            <input type="hidden" name="college.colFlag" value="${college.colFlag}" />
            <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr bgcolor="#E7E7E7">
                    <td height="24" colspan="2" bgcolor="#EEF4EA">&nbsp;新闻编辑&nbsp;</td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">标题：</td>
                    <td width="22%" align="left"><input id="aa" size="60"  type="text" name="college.colTitle" value="${college.colTitle}" class="validate[required]"/></td>
                </tr>
				 <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">作者：</td>
                    <td width="22%" align="left"><input type="text" name="college.colAuthor" value="${college.colAuthor}"/></td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">来源：</td>
                    <td width="22%" align="left"><input type="text" name="college.colSource" value="${college.colSource}"/></td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">图片新闻：</td>
                    <td width="22%" align="left">
                    <select name="news.newsImage">
                    <option value="0" <c:if test="${college.colImage==0}">selected</c:if>>否</option>
                    <option value="1" <c:if test="${college.colImage==1}">selected</c:if>>是</option>
                    </select>
                    </td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">院系：</td>
                    <td width="22%" align="left">
						<input type="text" name="college.colType" value="${college.colType}" readonly="readonly" />
					</td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">日期：</td>
                    <td width="22%" align="left">
                    <input id="date" type="text" name="college.colDate" value="${college.colDate}"/>
                    <img onclick="WdatePicker({el:'date'})" src="${ctx}/js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle" />
                    </td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">内容：</td>
                    <td width="22%" align="left"><FCK:editor instanceName="college.colContent" width="750px" height="450px" value="${college.colContent}"></FCK:editor></td>
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