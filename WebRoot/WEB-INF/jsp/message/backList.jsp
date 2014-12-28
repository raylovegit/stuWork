<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<title>湖北师范学院学生工作处后台管理系统</title>
<link href="style/main.css" rel="stylesheet" type="text/css" />
</head>
<!-- js.jsp的导入不能在页面的顶部，也不能在页面js下面的，因为不在作用范围内 -->
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
                <td>当前位置:&nbsp;<a href="#">>>留言管理</a>&nbsp;</td>
				<td>
                <table  border='0' cellpadding='0' cellspacing='0' align="center">
  <tr>
    <td background='skin/images/wbg.gif' align='center'>
    </td>
  </tr>
</table></td>
              </tr>
            </table>
            <form id="listForm" action="${ctx}/newsAction_list.action" method="post">
            <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr bgcolor="#E7E7E7">
                    <td height="24" colspan="7" bgcolor="#CEDFDE">&nbsp;文档列表&nbsp;</td>
                </tr>
                <tr align="center" bgcolor="#EDF3E3" height="22">
                    <td width="6%"><input id="allcheck" type="checkbox" /></td>
					<td width="4%">序号</td>
					<td width="28%">昵称</td>
					<td width="10%">主题</td>
					<td width="10%">内容</td>
					<td width="8%">时间</td>
					<td width="6%">操作</td>
                </tr>
                
                <c:forEach items="${mlist}" var="m" varStatus="s">
					<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" >
					<td><input name="ids" type="checkbox" value="${m.megId}"/></td>
					<td>${s.index+1}</td>
					<td>${m.megName}</td>
					<td>${m.megTitle}</td>
					<td>${m.megContent}</td>
					<td>${m.megTime}</td>
					<td>
					<c:choose>
						<c:when test="${m.flag eq '0'}">
						<a href="${ctx }/messageAction_verifyUpdate.action?ids=${m.megId }">审核通过</a>
						</c:when>
						<c:otherwise><font color="#ccc">已审核</font></c:otherwise>
					</c:choose>
					</td>
					</tr>
				</c:forEach>
                
                <tr bgcolor="#EDF3E3">
                <td height="28" colspan="3">
                    &nbsp;
                    <a id="delete" title="${ctx}/messageAction_bentchDelete.action" class="coolbg">批量删除</a>
					<a id="update" title="${ctx}/messageAction_read.action?pageNow=${pageNow}" class="coolbg">查看</a>
                </td>
                <td colspan="4">
                   <a class="coolbg">有${allCount}条新闻&nbsp;&nbsp;共${allPages}页&nbsp;&nbsp;当前第${pageNow}页</a>
                   <a id="pre" href="${ctx}/messageAction_list.action?pageNow=${pageNow-1}" class="coolbg">上一页</a>
                   <a id="next" href="${ctx}/messageAction_list.action?pageNow=${pageNow+1}" class="coolbg">下一页</a>
                </td>
                </tr>
                <tr align="right" bgcolor="#CEDFDE">
                    <td height="36" colspan="7" align="center"><!--翻页代码 --></td>
                </tr>
                </table></form></td>
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