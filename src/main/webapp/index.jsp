<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="This is my page"/>
    <title>IN ADMIN PANEL | Powered by INDEZINER</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <script type="text/javascript" src="JS/jquery.min.js"></script>
    <script type="text/javascript" src="JS/ddaccordion.js"></script>

    <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css'>
    <link rel='stylesheet prefetch' href='http://puertokhalid.com/up/demos/puerto-Mega_Menu/css/normalize.css'>
    <link rel="stylesheet" href="menu/menu_style.css" media="screen" type="text/css" />

    <script type="text/javascript">
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
            oninit: function (headers, expandedindices) { //custom code to run when headers have initalized
                //do nothing
            },
            onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                //do nothing
            }
        });
    </script>
    <script src="JS/jquery.jclock-1.2.0.js.txt" type="text/javascript"></script>
    <script type="text/javascript" src="JS/jconfirmaction.jquery.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $('.ask').jConfirmAction();
        });

    </script>
    <script type="text/javascript">
        $(function ($) {
            $('.jclock').jclock();
        });
    </script>
    <script language="javascript" type="text/javascript" src="JS/niceforms.js"></script>

</head>
<body>
<div id="main_container">

    <div class="header">
        <div class="logo"><a href="#"><img src="images/logo.gif" alt="" title="" border="0"/></a></div>

        <div class="right_header">Welcome <%=session.getAttribute("name") %> | <a href="logout.do"
                                                                                  class="logout">Logout</a></div>
        <div class="jclock"></div>
    </div>

    <div class="main_content">

         <div class="menu">
            <ul>
                <li><a onclick="clickA(this);" alt="order_record_query.jsp">订单记录查询</a></li>
                <li><a onclick="clickA(this);" alt="product_storage.jsp">产品入库</a></li>
                <li><a onclick="clickA(this);" alt="stockload.do">库存查询</a></li>
                <li><a onclick="clickA(this);" alt="sellload.do">产品销售</a></li>
                <li><a onclick="clickA(this);" alt="stockwarn.do">库存报警</a></li>
                <li><a onclick="clickA(this);" alt="customerquery.do">客户管理</a></li>
                <li><a onclick="clickA(this);" alt="modify_password.jsp">修改密码</a></li>
            </ul>
        </div>

        <div class="container">
            <div class="left_content">
            <nav>
                <ul class="mcd-menu">
                    <li>
                        <a href="">
                            <i class="fa fa-home"></i>
                            <strong>订单管理</strong>
                            <small>order</small>
                        </a>
                        <ul>
                            <li><a onclick="clickA(this);" alt="modify_password.jsp">修改密码</a></li>
                            <li><a onclick="clickA(this);" alt="getproduct.do">订购产品</a></li>
                            <li><a onclick="clickA(this);" alt="order_record_query.jsp"><i class="fa fa-leaf"></i>订单记录查询</a></li>
                           <%-- <li><a href="#"><i class="fa fa-leaf"></i>About</a></li>
                            <li><a href="#"><i class="fa fa-tasks"></i>Skills</a></li>--%>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="active">
                            <i class="fa fa-edit"></i>
                            <strong>About us</strong>
                            <small>sweet home</small>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa fa-gift"></i>
                            <strong>Features</strong>
                            <small>sweet home</small>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa fa-globe"></i>
                            <strong>News</strong>
                            <small>sweet home</small>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa fa-comments-o"></i>
                            <strong>Blog</strong>
                            <small>what they say</small>
                        </a>
                        <ul>
                            <li><a href="#"><i class="fa fa-globe"></i>Mission</a></li>
                            <li>
                                <a href="#"><i class="fa fa-group"></i>Our Team</a>
                                <ul>
                                    <li><a href="#"><i class="fa fa-female"></i>Leyla Sparks</a></li>
                                    <li>
                                        <a href="#"><i class="fa fa-male"></i>Gleb Ismailov</a>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-leaf"></i>About</a></li>
                                            <li><a href="#"><i class="fa fa-tasks"></i>Skills</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#"><i class="fa fa-female"></i>Viktoria Gibbers</a></li>
                                </ul>
                            </li>
                            <li><a href="#"><i class="fa fa-trophy"></i>Rewards</a></li>
                            <li><a href="#"><i class="fa fa-certificate"></i>Certificates</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa fa-picture-o"></i>
                            <strong>Portfolio</strong>
                            <small>sweet home</small>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa fa-envelope-o"></i>
                            <strong>Contacts</strong>
                            <small>drop a line</small>
                        </a>
                    </li>
                    <li class="float">
                        <a class="search">
                            <input type="text" value="search ...">
                            <button><i class="fa fa-search"></i></button>
                        </a>
                        <a href="" class="search-mobile">
                            <i class="fa fa-search"></i>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        </div>
       <%-- <div style="text-align:center;clear:both">--%>
            <div class="right_content">
                <iframe id='mainiFrame' src="getproduct.do" width="100%" height=1000 frameborder="0"
                        scrolling="no"></iframe>
            </div><!-- end of right content-->

        <div class="clear"></div>
    </div> <!--end of main content-->


    <div class="footer">

        <div class="left_footer">进销存管理系统 | Powered by Friday</div>
    </div>
    </div>
</div>
</body>
<!-- 在mainFrame显示页面 -->
<script>
    function clickA(a) {
        $('#mainiFrame').attr('src', $(a).attr('alt'));
    }
</script>
</html>