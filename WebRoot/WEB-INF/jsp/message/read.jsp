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
            <form action="${ctx}/messageAction_update.action" method="post">
            <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr bgcolor="#E7E7E7">
                    <td height="24" colspan="2" bgcolor="#EEF4EA">&nbsp;留言查看&nbsp;</td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">昵称：</td>
                    <td width="22%" align="left">
                    <input type="hidden" name="message.megName" value="${message.megName }" />
                    ${message.megName }</td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">留言时间：</td>
                    <td width="22%" align="left">
                    <input type="hidden" name="message.megTime" value="${message.megTime }" />
                    ${message.megTime }</td>
                </tr>
				 <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">主题：</td>
                    <td width="22%" align="left">
                     <input type="hidden" name="message.megTitle" value="${message.megTitle }" />
                    ${message.megTitle }</td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">内容：</td>
                    <td width="22%" align="left">
                     <input type="hidden" name="message.megContent" value="${message.megContent }" />
                    ${message.megContent }
                    </td>
                </tr>
                <input type="hidden" name="message.flag" value="${message.flag }" />
                <input type="hidden" name="message.megId" value="${message.megId }" />
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">管理员回复：</td>
                    <td width="22%" align="left">
                    <textarea rows="10" cols="60" name="message.reply">${message.reply }</textarea>
                    </td>
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