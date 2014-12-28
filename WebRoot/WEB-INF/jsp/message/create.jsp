<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <head>
    <title>My JSP 'creat.jsp' starting page</title>
    <link href="style/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/validationEngine.jquery.css"
			type="text/css" media="screen" title="no title" charset="utf-8" />
  </head>
  <%@ include file="/common/js.jsp"%>
  <script type="text/javascript">
    	$(function(){
		  			if(${pageNow == 1})
		  					$("#pre").attr("href","javascript:void(0)").css("color","#ccc");
		  			 if(${allPages == pageNow})
		  					$("#next").attr("href","javascript:void(0)").css("color","#ccc");
		  		});
  </script>
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
            <table>
            	<c:forEach items="${mlist}" var="m" varStatus="s">
					<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" >
					<td>${s.index+1}</td>
					<td>${m.megName}</td>
					<td>${m.megTitle}</td>
					<td>${m.megContent}</td>
					<td>${m.megTime}</td>
					<td>${m.reply}</td>
					</tr>
				</c:forEach>
				<tr>
				<td colspan="4">
                   <a class="coolbg">有${allCount}条新闻&nbsp;&nbsp;共${allPages}页&nbsp;&nbsp;当前第${pageNow}页</a>
                   <a id="pre" href="${ctx}/messageAction_verifyedList.action?pageNow=${pageNow-1}" class="coolbg">上一页</a>
                   <a id="next" href="${ctx}/messageAction_verifyedList.action?pageNow=${pageNow+1}" class="coolbg">下一页</a>
                </td>
                </tr>
			</table>
            
            <form id="validateform" action="${ctx}/messageAction_create.action" method="post">
            <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr bgcolor="#E7E7E7">
                    <td height="24" colspan="2" bgcolor="#EEF4EA">&nbsp;留言添加&nbsp;</td>
                </tr>
                <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">昵称：</td>
                    <td width="22%" align="left"><input id="aa" size="20" type="text" name="message.megName" class="validate[required]"/></td>
                </tr>
				 <tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">主题：</td>
                    <td width="22%" align="left"><input size="30" type="text" name="message.megTitle"/></td>
                </tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
                    <td width="8%">内容：</td>
                    <td width="22%" align="left">
                    <textarea rows="10" cols="60" name="message.megContent">请留言！！</textarea>
                </tr>
                <tr bgcolor="#FAFAF1">
                <td height="28" colspan="2">
                    &nbsp;
                    <input type="submit" class="coolbg" value="提交"/>
                </td>
                </tr>
                <tr align="right" bgcolor="#EEF4EA">
                    <td height="36" colspan="10" align="center"><!--翻页代码 --></td>
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