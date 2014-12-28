/*
 * @author rslee
 * @date 2010-5-21
 * 文档说明：
 * 用js实现回到首页，后退，前进，退出四种功能
 */
//回到首页
function home(homeId,homeName,homeUrl) {
	if (!document.getElementById(homeId))
		return;
	document.getElementById(homeId).onclick = function() {
		window.parent.frames[homeName].location=homeUrl;
	}
}
//上一页
function back(backId,homeName) {
	if (!document.getElementById(backId))
		return;
	document.getElementById(backId).onclick = function() {
		window.parent.frames[homeName].frames[1].history.back();
	}
}
//下一页
function go(goId,homeName) {
	if (!document.getElementById(goId))
		return;
	document.getElementById(goId).onclick = function() {
		window.parent.frames[homeName].frames[1].history.go(1);
	}
}
//刷新
function refresh(freshId,homeName) {
	if (!document.getElementById(freshId))
		return;
	document.getElementById(freshId).onclick = function() {
		window.parent.frames[homeName].frames[1].location.reload();
	}
}
//退出
function logout(logoutId,url,login){
	if (!document.getElementById(logoutId))
		return;
	document.getElementById(logoutId).onclick = function() {
		if (confirm("是否退出系统?"))
		  {
	       window.location.href=url;
	       window.parent.location.href=login;
	     }
	}
}