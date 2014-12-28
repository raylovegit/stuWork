<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
                <td>当前位置:&nbsp;<a href="#">>>用户管理</a>&nbsp;</td>
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
                    <td height="24" colspan="6" bgcolor="#CEDFDE">&nbsp;文档列表&nbsp;</td>
                </tr>
                <tr align="center" bgcolor="#EDF3E3" height="22">
                    <td width="6%"><input id="allcheck" type="checkbox" /></td>
					<td width="4%">序号</td>
					<td width="28%">用户名</td>
					<td width="10%">密码</td>
					<td width="10%">用户类型</td>
					<td width="8%">系别</td>
                </tr>
                
                <c:forEach items="${ulist}" var="u" varStatus="s">
					<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" >
					<td><input  name="ids" type="checkbox" value="${u.userId}" /></td>
					<td>${s.index+1}</td>
					<td>${u.userName}</td>
					<td>${u.userPassword}</td>
					<td>
					<c:if test="${0 eq u.userType}">管理员</c:if>
					<c:if test="${1 eq u.userType}">用户</c:if>
					</td>
					<td>${u.userClass}</td>
					</tr>
				</c:forEach>
                
                <tr bgcolor="#EDF3E3">
                <td height="28" colspan="3">
                    &nbsp;
                    <a id="delete" title="${ctx}/userAction_bentchDelete.action" class="coolbg">批量删除</a>
					<a id="update" title="${ctx}/userAction_preUpdate.action" class="coolbg">编辑</a>
					<a id="create" title="${ctx}/userAction_preCreate.action" class="coolbg">添加</a>  
                </td>
                <td colspan="3">
                   <a class="coolbg">有${allCount}条新闻&nbsp;&nbsp;共${allPages}页&nbsp;&nbsp;当前第${pageNow}页</a>
                   <a id="pre" href="${ctx}/userAction_list.action?pageNow=${pageNow-1}" class="coolbg">上一页</a>
                   <a id="next" href="${ctx}/userAction_list.action?pageNow=${pageNow+1}" class="coolbg">下一页</a>
                </td>
                </tr>
                <tr align="right" bgcolor="#CEDFDE">
                    <td height="36" colspan="6" align="center"><!--翻页代码 --></td>
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