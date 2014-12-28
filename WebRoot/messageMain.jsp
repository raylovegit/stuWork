<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>湖北师范学院学生工作处</title>

<link href="css/layout.css" rel="stylesheet" type="text/css" />
</head>
<%@ include file="/common/js.jsp"%>
  <script type="text/javascript">
    	$(function(){
		  			if(${pageNow == 1})
		  					$(".pre").attr("href","javascript:void(0)").css("color","#ccc");
		  			 if(${allPages == pageNow})
		  					$(".next").attr("href","javascript:void(0)").css("color","#ccc");
		  		});
		function code(){
	        var check= document.getElementById("check_image");
	        //这里要说明一下，就是如果路径相同的话，chrome和firefox是不会重新发送请求的，ie6会
	        check.setAttribute('src','${ctx}/common/image.jsp?'+Math.random());
	    }
  </script>
<body>
<div id="contently">
	<div id="liuyan">
    <div id="kong"></div>
    <div id="Toply1">
    	<div id="Toply">
        <p>共${allCount}条留言
	        <a href="${ctx}/indexAction_megList.action?pageNow=${pageNow-1}"" class="pre">上一页</a>
	        <a href="${ctx}/indexAction_megList.action?pageNow=${pageNow+1}" class="next"> 下一页</a>
        </p>
        <table width="95%">
        <!--第一条-->
         <c:forEach items="${mlist}" var="m" varStatus="s">
                        <tr>
                            <td width="36"><img src="images/lytubiao.jpg" /></td>
                          <td width="769" ><p align="left">${m.megName}<span>留言：${m.megTitle} </span> </p></td>
                        </tr>
                         <tr>
                            <td colspan=2 ><img src="images/lyxian.jpg" /></td>
                        </tr>
                        <tr>
                            <td height="23"><img src="images/ly.jpg" /></td>
                            <td><span>留言时间：${m.megTime}</span></td>
                        </tr>
                        <tr>
                            <td height="15" colspan="2" class="huifuly">${m.megContent}</td>
                        </tr>
                        <c:if test="${m.reply ne null}" >
                        <tr>
                            <td height="23"><img src="images/huiv.jpg" width="29" /></td>
                            <td><span>回复时间：${m.replyTime }</span></td>
                        </tr>
                        <tr>
                            <td height="15" colspan="2" class="huifuly">${m.reply}</td>
                        </tr>
                        </c:if>
                   </c:forEach>
                   <!--上下页码-->
                       <tr>
            <td height="40" colspan="2" align="right">
            共${allCount}条留言&nbsp;&nbsp;共${allPages}页&nbsp;&nbsp;当前第${pageNow}页
            <a  href="${ctx}/indexAction_megList.action?pageNow=${pageNow-1}"" class="pre">上一页</a>
            <a href="${ctx}/indexAction_megList.action?pageNow=${pageNow+1}" class="next"> 下一页</a></td>
          </tr>
          </table></div>
          </div>
          <div id="downly1">
 <div id="downly">
 <form id="validateform" name="form1" action="${ctx}/indexAction_createMeg.action" method="post">
      <table width="806" height="358">
       <tr>
                            <td colspan=2 ><img src="images/liu.jpg" /></td>
                        </tr>
  <tr>
    <td width="97">您的昵称:</td>
    <td width="697"><input type="text" name="message.megName" id="textfield" /></td>
  </tr>
  <tr>
    <td>留言主题:</td>
    <td><input type="text" name="message.megTitle" id="textfield2" /></td>
  </tr>
  <tr>
    <td>留言内容：</td>
    <td><textarea name="message.megContent" id="textarea" cols="50" rows="9"></textarea></td>
  </tr>
  <tr>
    <td>填写验证：</td>
    <td>
    		<input type="text" name="rand1" size="4" />
            <img  name="check_image" id="check_image"	src="${ctx}/common/image.jsp" onclick="code()" ></img>
    </td>					
  </tr>
  <tr><td></td><td>
  <input type="submit" name="button" id="button" value="发送" /></td></tr>
</table></form></div>  
</div> 
<div id="footerly"></div>      
  </div>

</div>
</body>
</html>
