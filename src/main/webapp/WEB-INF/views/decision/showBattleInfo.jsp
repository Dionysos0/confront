<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="../framework/header.jsp" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <style>
        * {
            font-size: 20px;
        }
    </style>
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%--<%@include file="framework/leftSide.jsp" %>--%>
        <%--..--%>
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/index" class="site_title"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;演习对抗</span></a>
                </div>
                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="../images/logo.png" alt="..." class="img-circle profile_img">
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
                                    <%-- hadoop-WEB接口 --%>
                                    <%--<li class="bigSize"><a style="font-size: 18px"--%>
                                    <%--href="222.24.85.253:50070">大数据存储管理技术</a></li>--%>
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
                                                           href="<%=request.getContextPath()%>/info2">深度学习</a></li>

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
                                    <%--href="<%=request.getContextPath()%>/viewVideo">智能系统集成</a>--%>
                                    <%--</li>--%>
                                </ul>
                            </li>

                            <%-- decison --%>
                            <li><a><i class="fa fa-edit"></i>类人智能决策支撑技术<span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a style="font-size: 18px"
                                           href="<%=request.getContextPath()%>/question">问题处理</a></li>
                                    <li><a style="font-size: 18px" href="<%=request.getContextPath()%>/question/${id}">交互系统</a>
                                    </li>
                                    <li><a style="font-size: 18px" href="<%=request.getContextPath()%>/console/${id}">对抗军演决策</a>
                                    </li>
                                    <li><a style="font-size: 18px" href="<%=request.getContextPath()%>/attack/${id}">对抗军演</a>
                                    </li>
                                    <li><a style="font-size: 18px"
                                           href="<%=request.getContextPath()%>/showBattle/${id}">智能系统面板</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->
            </div>
        </div>

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-weight: 600; color: #000000">阵营态势</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="col-md-9 col-sm-12 col-xs-12">
                                    <div class="demo-container" style="height:378px">
                                        <div id="highchart1" style="height: 378px; width: 100%;"></div>
                                    </div>
                                </div>

                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div>
                                        <div class="x_title">
                                            <%--<h2>Top Profiles</h2>--%>
                                            <ul class="nav navbar-right panel_toolbox">
                                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                </li>
                                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                                </li>
                                            </ul>
                                            <div class="clearfix"></div>
                                        </div>
                                        <ul class="list-unstyled top_profiles scroll-view">
                                            <li class="media event">
                                                <div class="media-body" style="font-weight: 600; color: #000000">
                                                    <a class="title" style="font-weight: 600; color: #000000">存活阵营</a>
                                                    <c:forEach var="ArmyInfo" items="${ArmyInfos}">
                                                        <c:if test="${ArmyInfo.hp != 0}">
                                                            <p class="even pointer">${ArmyInfo.base_name}</p>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-weight: 600; color: #000000">阵营态势</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="col-md-9 col-sm-12 col-xs-12">
                                    <div class="demo-container" style="height:378px">
                                        <div id="highchart2" style="height: 378px; width: 100%;"></div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div>
                                        <div class="x_title">
                                            <%--<h2>Top Profiles</h2>--%>
                                            <ul class="nav navbar-right panel_toolbox">
                                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                </li>
                                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                                </li>
                                            </ul>
                                            <div class="clearfix"></div>
                                        </div>
                                        <ul class="list-unstyled top_profiles scroll-view">
                                            <li class="media event">
                                                <div class="media-body">
                                                    <a class="title" style="font-weight: 600; color: #000000">存活阵营</a>
                                                    <c:forEach var="EnemyInfo" items="${EnemyInfos}">
                                                        <c:if test="${EnemyInfo.hp >= 0.1}">
                                                            <p class="even pointer">${EnemyInfo.base_name}</p>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="clearfix"></div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-weight: 600; color: #000000">红方阵营</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                        <tr class="headings">
                                            <th class="column-title">命令</th>
                                            <th class="column-title">阵营</th>
                                            <th class="column-title">战力</th>
                                            <th class="column-title">坐标</th>
                                        </tr>
                                        </thead>
                                        <tbody id="Situation1">
                                        <c:if test="${not empty ArmyInfos}">
                                            <c:forEach var="ArmyInfo" items="${ArmyInfos}">
                                                <tr class="even pointer" style="font-weight: 600; color: #000000">
                                                    <td>${ArmyInfo.id}</td>
                                                    <td>${ArmyInfo.base_name}</td>
                                                    <td>${fn:substring(ArmyInfo.hp, 0,4 )}</td>
                                                    <td>${ArmyInfo.l},${ArmyInfo.b}</td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-weight: 600; color: #000000">蓝方阵营</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                        <tr class="headings">
                                            <th class="column-title">命令</th>
                                            <th class="column-title">阵营</th>
                                            <th class="column-title">战力</th>
                                            <th class="column-title">坐标</th>
                                        </tr>
                                        </thead>
                                        <tbody id="Situation2">
                                        <c:if test="${not empty EnemyInfos}">
                                            <c:forEach var="EnemyInfo" items="${EnemyInfos}">
                                                <tr class="even pointer" style="font-weight: 600; color: #000000">
                                                    <th>${EnemyInfo.id}</th>
                                                    <th>${EnemyInfo.base_name}</th>
                                                    <td>${fn:substring(EnemyInfo.hp, 0,4 )}</td>
                                                    <th>${EnemyInfo.l},${EnemyInfo.b}</th>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->
    </div>
</div>
<%@include file="../framework/footer.jsp" %>
<script src="//code.highcharts.com/highcharts.js"></script>
<script language="JavaScript">
    $(document).ready(function () {
        var chart = {
            type: 'column'
        };
        var title = {
            text: '红方阵营态势'
        };
        var xAxis = {
            categories: ['初始战力', '0号基地', '1号基地', '2号基地', '3号基地', '4号基地', '5号基地', '6号基地', '7号基地', '8号基地', '9号基地'],
            crosshair: true
        };
        var yAxis = {
            min: 0,
            title: {
                text: ' '
            }
        };
        var tooltip = {
            headerFormat: '<span style="font-size:22px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:#005c2a;padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.4f} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        };
        var plotOptions = {
            column: {
                pointPadding: 0.1,
                borderWidth: 0
            }
        };
        var credits = {
            enabled: false
        };

        var series = [{
            name: '阵营战力',
            data: [2,
                ${ArmyInfos.get(0).hp},
                ${ArmyInfos.get(1).hp},
                ${ArmyInfos.get(2).hp},
                ${ArmyInfos.get(3).hp},
                ${ArmyInfos.get(4).hp},
                ${ArmyInfos.get(5).hp},
                ${ArmyInfos.get(6).hp},
                ${ArmyInfos.get(7).hp},
                ${ArmyInfos.get(8).hp},
                ${ArmyInfos.get(9).hp}]
        }];

        var json = {};
        json.chart = chart;
        json.title = title;
        json.tooltip = tooltip;
        json.xAxis = xAxis;
        json.yAxis = yAxis;
        json.series = series;
        json.plotOptions = plotOptions;
        json.credits = credits;
        $('#highchart1').highcharts(json);

    });
</script>
<script language="JavaScript">
    $(document).ready(function () {
        var chart = {
            type: 'column'
        };
        var title = {
            text: '蓝方阵营态势'
        };
        var xAxis = {
            categories: ['初始战力', '0号基地', '1号基地', '2号基地', '3号基地', '4号基地', '5号基地', '6号基地', '7号基地', '8号基地', '9号基地'],
            crosshair: true
        };
        var yAxis = {
            min: 0,
            title: {
                text: ' '
            }
        };
        var tooltip = {
            headerFormat: '<span style="font-size:22px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:#005c2a;padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.4f} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        };
        var plotOptions = {
            column: {
                pointPadding: 0.1,
                borderWidth: 0
            }
        };
        var credits = {
            enabled: false
        };

        var series = [{
            name: '阵营战力',
            data: [2,
                ${EnemyInfos.get(0).hp},
                ${EnemyInfos.get(1).hp},
                ${EnemyInfos.get(2).hp},
                ${EnemyInfos.get(3).hp},
                ${EnemyInfos.get(4).hp},
                ${EnemyInfos.get(5).hp},
                ${EnemyInfos.get(6).hp},
                ${EnemyInfos.get(7).hp},
                ${EnemyInfos.get(8).hp},
                ${EnemyInfos.get(9).hp}]
        }];

        var json = {};
        json.chart = chart;
        json.title = title;
        json.tooltip = tooltip;
        json.xAxis = xAxis;
        json.yAxis = yAxis;
        json.series = series;
        json.plotOptions = plotOptions;
        json.credits = credits;
        $('#highchart2').highcharts(json);

    });
</script>
</body>
</html>