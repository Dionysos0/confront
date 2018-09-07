<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <%@include file="../framework/header.jsp" %>
    <style>
        * {
            box-sizing: border-box;
            font-size: 18px;

        }

        .data {
            margin-left: -25px;
        }
    </style>
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">

        <style>
            * {
                font-size: 20px;
            }
        </style>
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
        <div class="right_col">
            <%--<div class="container body">--%>
            <div id="app">
                <form action="/console/${id}" method="get">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <h3 style="text-align: center; color: #bb242d;">红方阵地</h3>

                                <%--基地名称--%>
                                <%--<c:forEach items="${BaseNameList}" var="BaseName">--%>
                                <%--<div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">--%>

                                <%--<div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"--%>
                                <%--class="col-md-6">--%>
                                <%--${BaseName}--%>
                                <%--</div>--%>

                                <%--&lt;%&ndash;导弹信息&ndash;%&gt;--%>
                                <%--<div class="col-md-6">--%>
                                <%--<c:forEach begin="0" end="3" items="${MissileNames}" var="MissileName">--%>
                                <%--<div style="font-weight: 600; color: #000000" class="row">--%>
                                <%--<span class="data">${MissileName}&nbsp;&nbsp;&nbsp;&nbsp;</span>--%>
                                <%--<input style="float:right" name="num" type="number"--%>
                                <%--min="0" max="6" value="2">--%>
                                <%--</input>--%>
                                <%--</div>--%>
                                <%--</c:forEach>--%>
                                <%--</div>--%>

                                <%--</div>--%>
                                <%--</c:forEach>--%>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        0号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num1" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num2" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num3" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num4" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        1号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num5" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num6" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num7" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num8" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        2号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num9" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num10" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num11" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num12" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        3号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num13" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num14" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num15" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num16" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        4号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num17" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num18" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num19" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num20" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        5号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num21" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num22" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num23" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num24" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        6号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num25" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num26" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num27" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num28" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        7号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num29" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num30" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num31" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num32" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        8号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num33" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num34" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num35" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num36" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                    <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                         class="col-md-6">
                                        9号基地
                                    </div>
                                    <%--导弹信息--%>
                                    <div class="col-md-6">
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(0)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num37" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(1)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num38" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(2)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num39" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                        <div style="font-weight: 600; color: #000000" class="row">
                                            <span class="data">${MissileNames.get(3)}&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input style="float:right" name="num40" type="number"
                                                   min="0" max="6" value="2">
                                            </input>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <h3 style="text-align: center; color: #146edb">蓝方阵地</h3>

                                <c:forEach items="${BaseNameList}" var="BaseName">
                                    <div class="row" style="height: 160px;border: 2px solid black; border-radius: 5px;">

                                        <div style="font-weight: 600; color: #000000;text-align: center; margin-top:40px"
                                             class="col-md-6">
                                                ${BaseName}
                                        </div>

                                        <div class="col-md-6">

                                            <c:forEach begin="4" items="${MissileNames}" var="MissileName">
                                                <div style="margin: 6px 0;font-weight: 600; color: #000000"
                                                     class="row data">${MissileName}</div>
                                            </c:forEach>

                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>
                        <div style="text-align: center;">
                            <button class="btn btn-danger btn-lg" style="width: 280px; height: 70px;font-size: 34px">
                                确认对抗方案
                            </button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <%--</div>--%>
</div>
<%@include file="../framework/footer.jsp" %>
<script src="/vendors/switchery/dist/switchery.min.js"></script>
<!-- jQuery Knob -->
<script src="/vendors/jquery-knob/dist/jquery.knob.min.js"></script>

</body>
</html>