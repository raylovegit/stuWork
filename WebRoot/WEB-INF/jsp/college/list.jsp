<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>湖北师范学院学生工作处后台管理系统</title>
<link href="${ctx }/style/main.css" rel="stylesheet" type="text/css" />
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
                <td>当前位置:&nbsp;>>&nbsp;${userLogin.userClass}</td>
				<td>
				<form action="${ctx}/collegeAction_list.action?userClass=${userClass }" method="post">
                <table  border='0' cellpadding='0' cellspacing='0' align="center">
  <tr>
    <td background='skin/images/wbg.gif' align='center'><table border='0' cellpadding='0' cellspacing='0'>
        <tr>
          <td  align='center'></td>
          <td width='160'>
        </td>
        <td width='150' align="right">
          标题关键字：
        </td>
        <td width='210'>
          	<input type='text' name='keyword' value='' style='width:200px' />
        </td>
        <td>
          <input type="submit" value="" style="background:url(images/search.gif);width:45px;height:20px;" />
        </td>
       </tr>
      </table>
    </td>
  </tr>
</table></form>
</td>
              </tr>
            </table>
            <form id="listForm" action="${ctx}/collegeAction_list.action" method="post">
            <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr bgcolor="#E7E7E7">
                    <td height="24" colspan="7" bgcolor="#CEDFDE">&nbsp;文档列表&nbsp;</td>
                </tr>
                <tr align="center" bgcolor="#EDF3E3" height="22">
                    <td width="6%"><input id="allcheck" type="checkbox" /></td>
					<td width="4%">序号</td>
					<td width="28%">文章标题</td>
					<td width="10%">作者</td>
					<td width="10%">来源</td>
					<td width="6%">状态</td>
					<td width="8%">日期</td>
                </tr>
                
                <c:forEach items="${clist}" var="c" varStatus="s">
					<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" >
					<td>
					<!-- 如果flag是为2,即已发表的文章，就让checkbox变的不可用,即不可再对其操作 -->
					<c:choose>
						<c:when test="${'2' eq c.colFlag}"><input  name="ids" type="checkbox" value="${c.colId}" disabled/></c:when>
						<c:otherwise><input  name="ids" type="checkbox" value="${c.colId}"/></c:otherwise>
					</c:choose>
					</td>
					<td>${s.index+1}</td>
					<td align="left"><a href="${ctx}/collegeAction_preRead.action?ids=${c.colId}&pageNow=${pageNow}">${c.colTitle}</a></td>
					<td>${c.colAuthor}</td>
					<td>${c.colSource}</td>
					<td>
					<c:if test="${'0' eq c.colFlag}"><font color="blue">未提交</d></c:if>
					<c:if test="${'1' eq c.colFlag}"><font color="red">已提交</font></c:if>
					<c:if test="${'2' eq c.colFlag}"><font color="green">已发表</font></c:if>
					<c:if test="${'3' eq c.colFlag}"><font color="gray">审核未通过</font></c:if>
					</td>
					
					<td>${c.colDate}</td>
					</tr>
				</c:forEach>
                
                <tr bgcolor="#EDF3E3">
                <td height="28" colspan="4">
                    &nbsp;
                    <a id="delete" title="${ctx}/collegeAction_bentchDelete.action" class="coolbg">批量删除</a>
					<a id="update" title="${ctx}/collegeAction_preUpdate.action?pageNow=${pageNow}" class="coolbg">编辑</a>
					<a id="create" title="${ctx}/collegeAction_preCreate.action" class="coolbg">添加</a>  
					<a id="flagUpdate" title="${ctx}/collegeAction_flagUpdate.action?flag=1" class="coolbg">批量提交</a>
					<a id="read" title="${ctx}/collegeAction_preRead.action?pageNow=${pageNow}" class="coolbg">查看</a>
                </td>
                <td colspan="3">
                   <a class="coolbg">有${allCount}条新闻&nbsp;&nbsp;共${allPages}页&nbsp;&nbsp;当前第${pageNow}页</a>
                   <a id="pre" href="${ctx}/collegeAction_list.action?pageNow=${pageNow-1}&type=${type}&flag=${flag}&keyword=${keyword}" class="coolbg">上一页</a>
                   <a id="next" href="${ctx}/collegeAction_list.action?pageNow=${pageNow+1}&type=${type}&flag=${flag}&keyword=${keyword}" class="coolbg">下一页</a>
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