<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="../framework/header.jsp" %>
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
        <%--
          Created by IntelliJ IDEA.
          User: cn
          Date: 2018/1/24
          Time: 21:30
          To change this template use File | Settings | File Templates.
        --%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <img src="/images/logo.png" alt="..." class="img-circle profile_img">
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
                                    <%--<li class="bigSize"><a style="font-size: 18px" href="<%=request.getContextPath()%>/viewVideo">智能系统集成</a></li>--%>
                                </ul>
                            </li>

                            <%-- decison --%>
                            <li><a><i class="fa fa-edit"></i>类人智能决策支撑技术<span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a style="font-size: 18px"
                                           href="<%=request.getContextPath()%>/question">问题处理</a></li>
                                    <li><a style="font-size: 18px"
                                           href="<%=request.getContextPath()%>/question/1">交互系统</a></li>
                                    <li><a style="font-size: 18px"
                                           href="<%=request.getContextPath()%>/console/1">对抗军演决策</a></li>
                                    <li><a style="font-size: 18px"
                                           href="<%=request.getContextPath()%>/attack/1">对抗军演</a></li>
                                    <li><a style="font-size: 18px" href="<%=request.getContextPath()%>/showBattle/1">智能系统面板</a>
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
                <div class="page-title">
                    <div class="title_left">
                        <h3 style="font-size: 26px; font-weight: 900; color: #000000">导弹信息表</h3>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">导弹信息表
                                    <%--<small>sub title</small>--%>
                                </h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                           aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <form:form action="/missile/update.do/${missile.id}" modelAttribute="missile"
                                           method="post"
                                           class="form-horizontal form-label-left">
                                    <span style="font-size: 24px; font-weight: 800; color: #000000"
                                          class="section">参数细节</span>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">导弹名称 <span
                                                class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileName" id="name"
                                                        class="form-control col-md-7 col-xs-12"
                                                        name="name"
                                                        required="required" type="text"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="model">导弹模型 <span
                                                class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileModelName" id="model"
                                                        class="form-control col-md-7 col-xs-12"
                                                        name="name"
                                                        required="required" type="text"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="emission">导弹射程
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileEmission" type="text" id="emission" name="emission"
                                                        required="required"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="accuracy">精度
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileAccuracy" id="accuracy" type="text" name="accuracy"
                                                        required="required"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="type">导头类型
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileWarheadType" type="text" id="type" name="type"
                                                        required="required"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="time">准备时长
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missilePrepareTime" id="time" type="text" name="time"
                                                        data-validate-length-range="5,20"
                                                        class="optional form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="area">打击范围
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileAttackArea" id="area" type="text" name="area"
                                                        required="required"
                                                        data-validate-length-range="8,20"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="speed">速度
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileAttackSpeed" type="text" id="speed" name="phone"
                                                        required="required"
                                                        data-validate-length-range="8,20"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="length">导弹规格
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileLength" type="text" id="length" name="phone"
                                                        required="required"
                                                        data-validate-length-range="8,20"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>

                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-md-offset-3">
                                            <button href="<c:url value="/missile/"/>" type="submit"
                                                    class="btn btn-primary">Cancel
                                            </button>
                                            <button id="send" type="submit" class="btn btn-success">Submit</button>
                                        </div>
                                    </div>
                                </form:form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->
        <%@include file="../framework/footer.jsp" %>
</body>
</html>
