<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>IN ADMIN PANEL | Powered by INDEZINER</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" media="all" href="CSS/niceforms-default.css" />
<link rel="stylesheet" type="text/css" href="GalMenu/css/GalMenu.css" />
<script type="text/javascript" src="JS/jquery.min.js"></script>
<%--<script type="text/javascript" src="JS/ddaccordion.js"></script>--%>
<%--<script type="text/javascript">
ddaccordion.init({
	headerclass: "submenuheader", //Shared CSS class name of headers group
	contentclass: "submenu", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["suffix", "<img src='images/plus.gif' class='statusicon' />", "<img src='images/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})
</script>--%>

<script type="text/javascript" src="JS/jconfirmaction.jquery.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		$('.ask').jConfirmAction();
	});
	
</script>

<script language="javascript" type="text/javascript" src="JS/niceforms.js"></script>


</head>
<body>
<%--动态园菜单 start--%>
<div class="GalMenu GalDropDown">
    <div class="circle" id="gal">
        <div class="ring">
            <a href="http://www.16sucai.com" title="" class="menuItem">首页</a>
            <a href="#" title="" class="menuItem">博客</a>
            <a href="#" title="" class="menuItem">项目</a>
            <a href="#" title="" class="menuItem">综合</a>
            <a href="#" title="" class="menuItem">杂项</a>
            <a href="#" title="" class="menuItem">留言</a></div>
        <audio id="audio" src="GalMenu/audio/niconiconi.mp3"></audio>
    </div>
</div>
<div id="overlay" style="opacity: 1; cursor: pointer;"></div>
<script type="text/javascript">var items = document.querySelectorAll('.menuItem');
for (var i = 0,
         l = items.length; i < l; i++) {
    items[i].style.left = (50 - 35 * Math.cos( - 0.5 * Math.PI - 2 * (1 / l) * i * Math.PI)).toFixed(4) + "%";
    items[i].style.top = (50 + 35 * Math.sin( - 0.5 * Math.PI - 2 * (1 / l) * i * Math.PI)).toFixed(4) + "%"
}</script>
<div class="htmleaf-container">
    <h3 style="text-align: center">鼠标右键看看，右键一次打开菜单，再次右键或者鼠标移出菜单左键关闭菜单</h3>
    <h3 style="text-align: center">手机用户：长按=右键，点击=左键</h3>
</div>

<script src="GalMenu/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="GalMenu/js/GalMenu.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('body').GalMenu({
            'menu': 'GalDropDown'
        })
    });
</script>
<%--动态yuan菜单 end--%>
<div id="main_container">

	<div class="header_login">
	  <div class="logo"><a href="#"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    </div>
    <div class="login_form" align="center">
    <form name="myform" action="login.do" method="post">
    <table width="800" border="0" align="center">
     <tr>
       <td align="center" colspan="2"><h1>Admin Login</h1></td>
     </tr>
     <tr>
       <td width="200" height="50" align="right" style="font-size:20px"><strong>用户名:</strong></td>
       <td><input name="account" type="text" size="20" style="font-size:20px"/></td>
     </tr>
     <tr>
       <td height="50" align="right" style="font-size:20px"><strong>密 &nbsp;&nbsp;&nbsp;码:</strong></td>
       <td><input name="password" type="password" size="20" style="font-size:20px"/></td>
     </tr>
     <tr>
       <td align="center" colspan="2"><input type="submit" value="登陆" style="font-size:20px"  style="height:50px; width:300px;" /></td>
     </tr>
    </table>
    </form>
    </div>
    
    <div class="footer_login">
    
    	<div class="left_footer_login">进销存管理系统 | Powered by Friday</div>
    </div>

</div>		
</body>
</html>