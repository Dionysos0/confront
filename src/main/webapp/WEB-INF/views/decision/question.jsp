<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>对抗演练</title>
    <!-- Bootstrap -->
    <link href="/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="/build/css/custom.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font: 13px/1.5 "Microsoft YaHei", "Helvetica Neue", "Sans-Serif";
            min-height: 960px;
            min-width: 600px;
        }

        * {
            font-size: 20px;
        }
    </style>
</head>
<body class="nav-md">
<div class="container body" style="margin-left: 0">
    <div class="main_container">
        <%--<%@include file="../framework/leftSide.jsp" %>--%>
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/index" class="site_title"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;演习对抗</span></a>
                </div>
                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="<%=request.getContextPath()%>images/logo.png" alt="..."
                             class="img-circle profile_img">
                    </div>
                </div>
                <!-- /menu profile quick info -->
                <br/>
                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <%--<h3>nwpu</h3>--%>
                        <ul class="nav side-menu">

                            <%-- bigdata --%>
                            <li><a><i class="fa fa-home"></i> 大数据技术 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <c:choose>
                                        <c:when test="${fn:endsWith(pageContext.request.requestURI,'/index.jsp' )}">
                                            <li class="current-page"><a style="font-size: 18px"
                                                                        href="<%=request.getContextPath()%>/index">大数据感知和获取</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="bigSize"><a style="font-size: 18px"
                                                                   href="<%=request.getContextPath()%>/index">大数据感知和获取</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                    <%--&lt;%&ndash; hadoop-WEB接口 &ndash;%&gt;--%>
                                    <%--<li class="bigSize"><a style="font-size: 18px" href="222.24.85.253:50070">大数据存储管理技术</a></li>--%>
                                    <c:choose>
                                        <c:when test="${fn:endsWith(pageContext.request.requestURI,'/missileTable.jsp' )}">
                                            <li class="current-page"><a style="font-size: 18px"
                                                                        href="<%=request.getContextPath()%>/missile">导弹信息</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="bigSize"><a style="font-size: 18px"
                                                                   href="<%=request.getContextPath()%>/missile">导弹信息</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${fn:endsWith(pageContext.request.requestURI,'/bigdata/newAttackRule.jsp' )}">
                                            <li class="current-page"><a style="font-size: 18px"
                                                                        href="<c:url value="/newMissile"/>">新增导弹信息</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="bigSize"><a style="font-size: 18px"
                                                                   href="<c:url value="/newMissile.do"/>">新增导弹信息</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>

                                    <li class="bigSize"><a style="font-size: 18px"
                                                           href="<%=request.getContextPath()%>/showBattle2">智能系统面板</a>
                                    </li>
                                    <li class="bigSize">
                                        <a style="font-size: 18px" href="<%=request.getContextPath()%>/aircraft">飞行器信息系统</a>
                                    </li>

                                    <li class="bigSize">
                                        <a style="font-size: 18px" href="<%=request.getContextPath()%>/submarine">潜艇信息系统</a>
                                    </li>

                                    <li class="bigSize">
                                        <a style="font-size: 18px" href="<%=request.getContextPath()%>/el">实体-关系图</a>
                                    </li>
                                </ul>
                            </li>

                            <%-- ai --%>
                            <li><a><i class="fa fa-edit"></i>类人智能系统<span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <c:choose>
                                        <c:when test="${fn:endsWith(pageContext.request.requestURI,'/machineLearning.jsp' )}">
                                            <li class="current-page bigSize"><a style="font-size: 18px"
                                                                                href="<%=request.getContextPath()%>/info">知识发现</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="bigSize"><a style="font-size: 18px"
                                                                   href="<%=request.getContextPath()%>/info">知识发现</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>

                                    <li class="bigSize"><a style="font-size: 18px"
                                                           href="<%=request.getContextPath()%>/info2">深度学习</a>
                                    </li>

                                    <li><a style="font-size: 18px" href="/rule">规则库</a></li>
                                    <%--新增规则--%>
                                    <li class="bigSize"><a style="font-size: 18px"
                                                           href="<%=request.getContextPath()%>/ruleAttackNew">新增打击规则</a>
                                    </li>
                                    <li class="bigSize"><a style="font-size: 18px"
                                                           href="<%=request.getContextPath()%>/ruleDefenderNew">新增防御规则</a>
                                    </li>

                                    <c:choose>
                                        <c:when test="${fn:endsWith(pageContext.request.requestURI,'/model.jsp' )}">
                                            <li class="current-page"><a style="font-size: 18px"
                                                                        href="<%=request.getContextPath()%>/model">模型库</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="bigSize"><a style="font-size: 18px"
                                                                   href="<%=request.getContextPath()%>/model">模型库</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>

                                    <%-- 战场动画 --%>
                                    <%--<li class="bigSize"><a style="font-size: 18px"--%>
                                    <%--href="<%=request.getContextPath()%>/viewVideo">智能系统集成</a></li>--%>
                                </ul>
                            </li>

                            <%-- decison --%>
                            <li><a><i class="fa fa-edit"></i>类人智能决策支撑技术<span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li>
                                        <a style="font-size: 18px"
                                           href="<%=request.getContextPath()%>/question">问题处理</a></li>
                                    <li><a style="font-size: 18px" href="<%=request.getContextPath()%>/question/${id}">交互系统</a>
                                    </li>
                                    <li><a style="font-size: 18px" href="<%=request.getContextPath()%>/console/${id}">对抗军演决策</a>
                                    </li>
                                    <li><a style="font-size: 18px" href="<%=request.getContextPath()%>/attack/${id}">对抗军演</a>
                                    </li>
                                    <li><a style="font-size: 18px"
                                           href="<%=request.getContextPath()%>/showBattle/${id}">智能系统面板</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->
            </div>
        </div>

        <!-- page content -->
        <div class="right_col">
            <div>
                <img style="width: 100%;height: 618px;border: 3px solid rgba(0,0,0,0.85)"
                     src="../images/machinelearning/question.png">
            </div>
            <div class="container">
                <div class="row">
                    <div class="" style="text-align: center">
                        <form action="/question/${id}">
                            <center>
                                <p style="font-size: 40px; font-weight: 600; color: #000000">收到命令：${value}</p>
                            </center>
                            <input class="form-control" style="width: 100%;height: 100%" type="hidden"
                                   placeholder="${value}">
                            <button class="btn btn-danger" style="width: 300px; height: 70px;font-size: 34px">立即生成决策方案
                            </button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--</div>--%>
    <%--<script type="text/javascript">--%>
    <%--//创建地图--%>
    <%--var map = new AMap.Map('MapContainer', {--%>
    <%--layers: [new AMap.TileLayer.Satellite()],--%>
    <%--zoom: 3,--%>

    <%--});--%>
    <%--AMapUI.load(['ui/misc/PathSimplifier', 'lib/$'], function (PathSimplifier, $) {--%>
    <%--if (!PathSimplifier.supportCanvas) {--%>
    <%--alert('当前环境不支持 Canvas！');--%>
    <%--return;--%>
    <%--}--%>
    <%--});--%>
    <%--</script>--%>
    <%@include file="../framework/footer.jsp" %>
</body>
</html>