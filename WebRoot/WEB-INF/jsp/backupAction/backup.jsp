<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@page import="java.util.*,common.util.FileInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<title>湖北师范学院学生工作处后台管理系统</title>
<link href="style/main.css" rel="stylesheet" type="text/css" />
</head>
<!-- js.jsp的导入不能在页面的顶部，也不能在页面js下面的，因为不在作用范围内 -->
  <%@ include file="/common/js.jsp"%>
<!-- js.jsp的导入不能在页面的顶部，也不能在页面js下面的，因为不在作用范围内 -->
  <%@ include file="/common/js.jsp"%>
  <link rel="stylesheet"
			href="${ctx}/js/jquery_pagination/pagination.css" />
		<%@ include file="/common/js.jsp"%>
		<script type="text/javascript"
			src="${ctx}/js/jquery_pagination/jquery.pagination.js"></script>
		<script type="text/javascript">
			function pageselectCallback(page_index, jq){
                var new_content = $('#hiddenresult div.result:eq('+page_index+')').clone();
                $('#Searchresult').empty().append(new_content);
                return false;
            }
           
            function initPagination() {
                var num_entries = $('#hiddenresult div.result').length;
                // Create pagination element
                $("#Pagination").pagination(num_entries, {
                // 导航条后面显示的页数
                    num_edge_entries: 2,
                // 导航条前面显示的页数
                    num_display_entries: 5,
                    callback: pageselectCallback,
                    items_per_page:1
                });
             }
                    
            // Load HTML snippet with AJAX and insert it into the Hiddenresult element
            // When the HTML has loaded, call initPagination to paginate the elements        
            $(document).ready(function(){      
                initPagination();
            });    
        </script>
<body>
<%!//定义每页显示的记录的条数
	private final int RECORD = 10;%>
		<%
			//从后台得到数据集list
			List list = null;
			int size = 0;
			if (request.getAttribute("list") != null) {

				list = (List) request.getAttribute("list");
				size = list.size();
			}
			//得到数据集list的长度size
		%>
<table width="100%" cellpadding="0" cellspacing="0">
  <tr>
    <td>
      <table width="100%" height="269" cellpadding="0" cellspacing="0" class="table">
        <tr>
          <td valign="top">
            <table width="100%" class="top" cellpadding="0" cellspacing="0">
              <tr>
                <td>当前位置:&nbsp;<a href="#">>>数据库备份</a>&nbsp;</td>
				<td>
                <table  border='0' cellpadding='0' cellspacing='0' align="center">
  <tr>
    <td background='skin/images/wbg.gif' align='center'>
                <a href="backupAction_backup.action" class="coolbg">开始备份</a>
    </td>
  </tr>
</table></td>
              </tr>
            </table>
			<!-- 在id为“Searchresult”的div中显示分页数据集 -->
									<div id="Searchresult">
										This content will be replaced when pagination inits.
									</div>
									<!-- 加入页面导航条 -->
									<div id="Pagination" class="pagination"></div>
									<br style="clear: both;" />
									
<div id="hiddenresult" style="display: none;">
			<%
				//得到显示的页数
				int pages = size / RECORD;
				if (size % RECORD != 0)
					pages++;
				System.out.println("pages=" + pages);

				for (int j = 0; j < pages; j++) {
			%>
	<div class="result">
<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
                <tr bgcolor="#E7E7E7">
                    <td height="24" colspan="3" bgcolor="#CEDFDE">&nbsp;文档列表&nbsp;<font color="green">${message}</font></td>
                </tr>
                <tr align="center" bgcolor="#EDF3E3" height="22">
					<td >备份文件</td>
					<td width="28%">时间</td>
					<td width="10%">操作</td>
                </tr>
                
                <%
						for (int k = 0; k < RECORD; k++) {

								int num = k + RECORD * j;

								if (num > size - 1)
									break;


								FileInfo file = (FileInfo) list.get(num);
								String fileName = file.getFileName();
								String lastReadTime = file.getLastReadTime();
					%>
					
					<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22" >
					<td><%=fileName%></td>
					<td><%=lastReadTime%></td>
					<td><a href="backupAction_load.action?fileName=<%=fileName%>" onclick="return confirm('确认恢复？');">恢复</a></td>
					</tr>
					<%
						}
					%>	
					</table>
					</div>
			<%
				}
			%>
		</div>
		</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table> 
      
</body>
</html>






