<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<title></title>
</head>
<style>
* { margin:0 auto; padding:0; border:0;}
body { background:#078DA6; font:12px "宋体"; color:#004C7E;}
input { border:1px solid #004C7E;}
.main { background:url(images/bg.jpg) repeat-x; height:800px;}
.login { background:#DDF1FE; width:468px; height:262px; border:1px solid #000;}
.top { background:url(images/login_bg.jpg) repeat-x; width:464px; height:113px; border:1px solid #2376B1; margin-top:1px;}
.logo { background:url(images/login_pic.jpg) no-repeat; width:214px; height:113px; float:left; margin:0;}
.lable { background:url(images/lable.gif) no-repeat; width:157px; height:32px; float:right; margin:80px 31px 0 0;}
.submit { background:url(images/submit.gif) no-repeat; width:71px; height:24px; border:0;} 
.reset { background:url(images/reset.gif) no-repeat; width:71px; height:24px; border:0;} 
</style>
<script language="javascript">
		function code(){
	        var check= document.getElementById("check_image");
	        //这里要说明一下，就是如果路径相同的话，chrome和firefox是不会重新发送请求的，ie6会
	        check.setAttribute('src','${ctx}/common/image.jsp?'+Math.random());
	    }
	</script>
<body>
<table width="100%" class="main" cellpadding="0" cellspacing="0">
  <tr>
    <td>
      <div class="login">
        <div class="top">
          <div class="logo"></div>
          <div class="lable"></div>
        </div>
        <form name="login" action="${ctx}/login_loginValidate.action" method="post">
        <table width="468" cellpadding="0" cellspacing="0">
          <tr>
            <td width="282" style="padding-top:17px;">
              <table width="100%" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="right" height="27">用户名：&nbsp;</td>
                  <td align="left" width="161">
                    <input type="text" id="branch" name="user.userName"/>
                  </td>
                </tr>
                <tr>
                  <td align="right" height="27">密码：&nbsp;</td>
                  <td align="left" width="161">
                    <input type="password" id="user" name="user.userPassword"/>
                  </td>
                </tr>
                <tr>
                  <td align="right" style="vertical-align:top; padding-top:3px;" height="27">验证码：&nbsp;</td>
                  <td align="left" width="161">
                  	<input type="text" name="rand1" size="6"
																style=" width: 50px; border: solid 1px #0000; font-size: 12px; color: #81b432;" />
                    <img  name="check_image" id="check_image"	src="${ctx}/common/image.jsp" onclick="code()" ></img>
                  </td>
                </tr>
              </table>
            </td>
            <td style="padding-top:30px;">
              <table width="100%" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" height="29">
                    <input name="submit" type="submit" value="" class="submit"/>
                  </td>
                </tr>
                <tr>
                  <td align="center" height="29">
                    <input name="reset" type="reset" value="" class="reset" />
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        </form>
        <table width="100%" cellpadding="0" cellspacing="0" style="margin-top:28px;">
          <tr>
            <td align="center";>Conpyright 2010</td>
          </tr>
        </table>
      </div>
      <!--login -->
    </td>
  </tr>
</table>
</body>
</html>
