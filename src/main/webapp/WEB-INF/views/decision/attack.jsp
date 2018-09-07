<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <%--<%@include file="../framework/header.jsp" %>--%>
    <%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/22
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>对抗演练</title>
    <!-- Bootstrap -->
    <link href="/vendors/bootstrap/dist/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/vendors/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/vendors/nprogress/nprogress.css" type="text/css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/vendors/iCheck/skins/flat/green.css" type="text/css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" type="text/css"
          rel="stylesheet">
    <!-- JQVMap -->
    <link href="/vendors/jqvmap/dist/jqvmap.min.css" type="text/css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="/vendors/bootstrap-daterangepicker/daterangepicker.css" type="text/css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="/build/css/custom.min.css" type="text/css" rel="stylesheet">

    <meta charset="utf-8">
    <style>
        #demo {
            margin-top: 10px;
            background: #FFF;
            overflow: hidden;
            height: 300px;
            width: 100%;
            text-align: center;
        }

        body {
            margin: 0;
        }

        #main {
            height: 80%;
        }

        .anchorBL {
            display: none;
        }

        * {
            font-size: 20px;
        }
    </style>
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%--<style>--%>
        <%----%>
        <%--</style>--%>
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
        <div class="right_col">
            <div id="main"></div>
            <div class="container">
                <div id="demo" style="">
                    <div id="demo1" style="">
                        <div class="container">
                            <div id="data" class="row" style="margin-top:20px">
                                <div class="col-md-6">
                                    <div style="font-weight: 600; color: #000000">
                                        <p>红方基地1发射4枚导弹</p>
                                        <p>红方基地2发射2枚导弹</p>
                                        <p>红方基地3发射3枚导弹</p>
                                        <p>红方基地4发射5枚导弹</p>
                                        <p>红方基地5发射6枚导弹</p>
                                        <p>红方基地6发射5枚导弹</p>
                                        <p>红方基地7发射4枚导弹</p>
                                        <p>红方基地8发射5枚导弹</p>
                                        <p>红方基地9发射6枚导弹</p>
                                        <p>红方基地10发射4枚导弹</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div style="font-weight: 600; color: #000000">
                                        <p>蓝方基地1被摧毁</p>
                                        <p>蓝方基地2被摧毁</p>
                                        <p>蓝方基地3被摧毁</p>
                                        <p>蓝方基地4被摧毁</p>
                                        <p>蓝方基地5被摧毁</p>
                                        <p>蓝方基地6被摧毁</p>
                                        <p>蓝方基地7被摧毁</p>
                                        <p>蓝方基地8被摧毁</p>
                                        <p>蓝方基地9被摧毁</p>
                                        <p>蓝方基地10被摧毁</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div style="position: absolute; top: 0px; right: 0px">
                <form action="/showBattle/${id}">
                    <button class="btn bt-lg btn-danger" style="float: right;font-size: 26px">对抗演练结果展示</button>
                </form>
            </div>
            <div id="demo2" style="width: 0;height: 0; overflow: hidden"></div>
        </div>
    </div>
</div>
<%@include file="../framework/footer.jsp" %>
<script src="/vendors/EchartsAndBaiduMaps/echarts.js"></script>
<script src="/vendors/EchartsAndBaiduMaps/bmap.js"></script>
<%--webapi.amap.com/maps?v=1.3&key=8325164e247e15eea68b59e89200988b--%>
<%--http://api.map.baidu.com/getscript?v=2.0&ak=0UqXGL98FSmi22w2Rl6HK56I&services=&t=20170517145936--%>

<%--todo ak qiyong 2018/6/29--%>
<script type="text/javascript"
        src="http://api.map.baidu.com/getscript?v=2.0&ak=0UqXGL98FSmi22w2Rl6HK56I&services=&t=20170517145936"></script>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));

    var geoCoordMap = {
        '2base_0': [${ArmyInfos.get(0).point}],
        '2base_1': [${ArmyInfos.get(1).point}],
        '2base_2': [${ArmyInfos.get(2).point}],
        '2base_3': [${ArmyInfos.get(3).point}],
        '2base_4': [${ArmyInfos.get(4).point}],
        '2base_5': [${ArmyInfos.get(5).point}],
        '2base_6': [${ArmyInfos.get(6).point}],
        '2base_7': [${ArmyInfos.get(7).point}],
        '2base_8': [${ArmyInfos.get(8).point}],
        '2base_9': [${ArmyInfos.get(9).point}],

        '1base_0': [${EnemyInfos.get(0).point}],
        '1base_1': [${EnemyInfos.get(1).point}],
        '1base_2': [${EnemyInfos.get(2).point}],
        '1base_3': [${EnemyInfos.get(3).point}],
        '1base_4': [${EnemyInfos.get(4).point}],
        '1base_5': [${EnemyInfos.get(5).point}],
        '1base_6': [${EnemyInfos.get(6).point}],
        '1base_7': [${EnemyInfos.get(7).point}],
        '1base_8': [${EnemyInfos.get(8).point}],
        '1base_9': [${EnemyInfos.get(9).point}]
    };

    // 我方
    var BJData = [

        [{name: '1base_0'}, {name: '${EnemyAttacks.get(0)}', value: 95}],
        [{name: '1base_0'}, {name: '${EnemyAttacks.get(1)}', value: 90}],
        [{name: '1base_0'}, {name: '${EnemyAttacks.get(2)}', value: 85}],
        [{name: '1base_0'}, {name: '${EnemyAttacks.get(3)}', value: 80}],

        [{name: '1base_1'}, {name: '${EnemyAttacks.get(4)}', value: 85}],
        [{name: '1base_1'}, {name: '${EnemyAttacks.get(5)}', value: 80}],
        [{name: '1base_1'}, {name: '${EnemyAttacks.get(6)}', value: 85}],
        [{name: '1base_1'}, {name: '${EnemyAttacks.get(7)}', value: 80}],

        [{name: '1base_2'}, {name: '${EnemyAttacks.get(8)}', value: 85}],
        [{name: '1base_2'}, {name: '${EnemyAttacks.get(9)}', value: 80}],
        [{name: '1base_2'}, {name: '${EnemyAttacks.get(10)}', value: 85}],
        [{name: '1base_2'}, {name: '${EnemyAttacks.get(11)}', value: 80}],

        [{name: '1base_3'}, {name: '${EnemyAttacks.get(12)}', value: 85}],
        [{name: '1base_3'}, {name: '${EnemyAttacks.get(13)}', value: 90}],
        [{name: '1base_3'}, {name: '${EnemyAttacks.get(14)}', value: 85}],
        [{name: '1base_3'}, {name: '${EnemyAttacks.get(15)}', value: 80}],

        [{name: '1base_4'}, {name: '${EnemyAttacks.get(16)}', value: 75}],
        [{name: '1base_4'}, {name: '${EnemyAttacks.get(17)}', value: 70}],
        [{name: '1base_4'}, {name: '${EnemyAttacks.get(18)}', value: 65}],
        [{name: '1base_4'}, {name: '${EnemyAttacks.get(19)}', value: 60}],

        [{name: '1base_5'}, {name: '${EnemyAttacks.get(20)}', value: 85}],
        [{name: '1base_5'}, {name: '${EnemyAttacks.get(21)}', value: 80}],
        [{name: '1base_5'}, {name: '${EnemyAttacks.get(22)}', value: 80}],
        [{name: '1base_5'}, {name: '${EnemyAttacks.get(23)}', value: 70}],

        [{name: '1base_6'}, {name: '${EnemyAttacks.get(24)}', value: 95}],
        [{name: '1base_6'}, {name: '${EnemyAttacks.get(25)}', value: 90}],
        [{name: '1base_6'}, {name: '${EnemyAttacks.get(26)}', value: 80}],
        [{name: '1base_6'}, {name: '${EnemyAttacks.get(27)}', value: 70}],

        [{name: '1base_7'}, {name: '${EnemyAttacks.get(28)}', value: 95}],
        [{name: '1base_7'}, {name: '${EnemyAttacks.get(29)}', value: 90}],
        [{name: '1base_7'}, {name: '${EnemyAttacks.get(30)}', value: 80}],
        [{name: '1base_7'}, {name: '${EnemyAttacks.get(31)}', value: 70}],

        [{name: '1base_8'}, {name: '${EnemyAttacks.get(32)}', value: 95}],
        [{name: '1base_8'}, {name: '${EnemyAttacks.get(33)}', value: 90}],
        [{name: '1base_8'}, {name: '${EnemyAttacks.get(34)}', value: 80}],
        [{name: '1base_8'}, {name: '${EnemyAttacks.get(35)}', value: 70}],

        [{name: '1base_9'}, {name: '${EnemyAttacks.get(36)}', value: 95}],
        [{name: '1base_9'}, {name: '${EnemyAttacks.get(37)}', value: 90}],
        [{name: '1base_9'}, {name: '${EnemyAttacks.get(38)}', value: 80}],
        [{name: '1base_9'}, {name: '${EnemyAttacks.get(39)}', value: 70}]
    ];

    // 敌方
    var SHData = [
        [{name: '2base_0'}, {name: '${ArmyAttacks.get(0)}', value: 10}],
        [{name: '2base_0'}, {name: '${ArmyAttacks.get(1)}', value: 20}],
        [{name: '2base_0'}, {name: '${ArmyAttacks.get(2)}', value: 30}],
        [{name: '2base_0'}, {name: '${ArmyAttacks.get(3)}', value: 40}],

        [{name: '2base_1'}, {name: '${ArmyAttacks.get(4)}', value: 60}],
        [{name: '2base_1'}, {name: '${ArmyAttacks.get(5)}', value: 50}],
        [{name: '2base_1'}, {name: '${ArmyAttacks.get(6)}', value: 40}],
        [{name: '2base_1'}, {name: '${ArmyAttacks.get(7)}', value: 30}],

        [{name: '2base_2'}, {name: '${ArmyAttacks.get(8)}', value: 60}],
        [{name: '2base_2'}, {name: '${ArmyAttacks.get(9)}', value: 50}],
        [{name: '2base_2'}, {name: '${ArmyAttacks.get(10)}', value: 40}],
        [{name: '2base_2'}, {name: '${ArmyAttacks.get(11)}', value: 30}],

        [{name: '2base_3'}, {name: '${ArmyAttacks.get(12)}', value: 60}],
        [{name: '2base_3'}, {name: '${ArmyAttacks.get(13)}', value: 50}],
        [{name: '2base_3'}, {name: '${ArmyAttacks.get(14)}', value: 40}],
        [{name: '2base_3'}, {name: '${ArmyAttacks.get(15)}', value: 30}],

        [{name: '2base_4'}, {name: '${ArmyAttacks.get(16)}', value: 60}],
        [{name: '2base_4'}, {name: '${ArmyAttacks.get(17)}', value: 50}],
        [{name: '2base_4'}, {name: '${ArmyAttacks.get(18)}', value: 40}],
        [{name: '2base_4'}, {name: '${ArmyAttacks.get(19)}', value: 30}],

        [{name: '2base_5'}, {name: '${ArmyAttacks.get(20)}', value: 60}],
        [{name: '2base_5'}, {name: '${ArmyAttacks.get(21)}', value: 50}],
        [{name: '2base_5'}, {name: '${ArmyAttacks.get(22)}', value: 40}],
        [{name: '2base_5'}, {name: '${ArmyAttacks.get(23)}', value: 30}],

        [{name: '2base_6'}, {name: '${ArmyAttacks.get(24)}', value: 60}],
        [{name: '2base_6'}, {name: '${ArmyAttacks.get(25)}', value: 50}],
        [{name: '2base_6'}, {name: '${ArmyAttacks.get(26)}', value: 40}],
        [{name: '2base_6'}, {name: '${ArmyAttacks.get(27)}', value: 30}],

        [{name: '2base_7'}, {name: '${ArmyAttacks.get(28)}', value: 60}],
        [{name: '2base_7'}, {name: '${ArmyAttacks.get(29)}', value: 50}],
        [{name: '2base_7'}, {name: '${ArmyAttacks.get(30)}', value: 40}],
        [{name: '2base_7'}, {name: '${ArmyAttacks.get(31)}', value: 30}],

        [{name: '2base_8'}, {name: '${ArmyAttacks.get(32)}', value: 60}],
        [{name: '2base_8'}, {name: '${ArmyAttacks.get(33)}', value: 50}],
        [{name: '2base_8'}, {name: '${ArmyAttacks.get(34)}', value: 40}],
        [{name: '2base_8'}, {name: '${ArmyAttacks.get(35)}', value: 30}],

        [{name: '2base_9'}, {name: '${ArmyAttacks.get(36)}', value: 60}],
        [{name: '2base_9'}, {name: '${ArmyAttacks.get(37)}', value: 50}],
        [{name: '2base_9'}, {name: '${ArmyAttacks.get(38)}', value: 40}],
        [{name: '2base_9'}, {name: '${ArmyAttacks.get(39)}', value: 30}]
    ];

    // 我方被拦截
    var GZData = [
            [{name: '1base_0'}, {name: '${EnemyAttacks.get(0)}', value: 40}],
            [{name: '1base_1'}, {name: '${EnemyAttacks.get(4)}', value: 40}],
            [{name: '1base_2'}, {name: '${EnemyAttacks.get(8)}', value: 40}],
            [{name: '1base_9'}, {name: '${EnemyAttacks.get(12)}', value: 40}],
            [{name: '1base_3'}, {name: '${EnemyAttacks.get(16)}', value: 40}],
            [{name: '1base_4'}, {name: '${EnemyAttacks.get(20)}', value: 40}],
            [{name: '1base_5'}, {name: '${EnemyAttacks.get(24)}', value: 40}],
            [{name: '1base_6'}, {name: '${EnemyAttacks.get(28)}', value: 40}],
            [{name: '1base_7'}, {name: '${EnemyAttacks.get(32)}', value: 40}],
            [{name: '1base_8'}, {name: '${EnemyAttacks.get(36)}', value: 40}],
            [{name: '1base_9'}, {name: '${EnemyAttacks.get(39)}', value: 40}]
        ]
    ;

    // var planePath = 'path://M1705.06,1318.313v-89.254l-319.9-221.799l0.073-208.063c0.521-84.662-26.629-121.796-63.961-121.491c-37.332-0.305-64.482,36.829-63.961,121.491l0.073,208.063l-319.9,221.799v89.254l330.343-157.288l12.238,241.308l-134.449,92.931l0.531,42.034l175.125-42.917l175.125,42.917l0.531-42.034l-134.449-92.931l12.238-241.308L1705.06,1318.313z';
    var planePath = 'arrow';

    var convertData = function (data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var dataItem = data[i];
            var fromCoord = geoCoordMap[dataItem[0].name];
            var toCoord = geoCoordMap[dataItem[1].name];
            if (fromCoord && toCoord) {
                res.push({
                    fromName: dataItem[0].name,
                    toName: dataItem[1].name,
                    coords: [fromCoord, toCoord]
                });
            }
        }
        return res;
    };

    // 导弹颜色
    var color = ['#c80f0f', '#1c52ff', '#257a1e'];
    var series = [];
    [['', BJData], ['', SHData], ['被拦截', GZData]].forEach(function (item, i) {
        series.push({
                name: item[0] + '',
                type: 'lines',
                coordinateSystem: 'bmap',
                zlevel: 1,
                effect: {
                    show: true,
                    period: 6,
                    trailLength: 0.7,
                    color: '#fff',
                    symbolSize: 3
                },
                lineStyle: {
                    normal: {
                        color: color[i],
                        width: 0,
                        curveness: 0.2
                    }
                },
                data: convertData(item[1])
            },
            {
                name: item[0] + '',
                type: 'lines',
                coordinateSystem: 'bmap',
                zlevel: 2,
                effect: {
                    show: true,
                    period: 6,
                    trailLength: 0,
                    // 飞行器图标
                    symbol: planePath,
                    symbolSize: 15
                },
                lineStyle: {
                    normal: {
                        color: color[i],
                        width: 1,
                        opacity: 0.4,
                        curveness: 0.2
                    }
                },
                data: convertData(item[1])
            },
            {
                name: item[0] + '',
                type: 'effectScatter',
                coordinateSystem: 'bmap',
                zlevel: 2,
                rippleEffect: {
                    brushType: 'stroke'
                },
                label: {
                    normal: {
                        show: false,
                        position: 'right',
                        formatter: '{b}'
                    }
                },
                symbolSize: function (val) {
                    return val[2] / 8;
                },
                itemStyle: {
                    normal: {
                        color: color[i]
                    }
                },
                data: item[1].map(function (dataItem) {
                    return {
                        name: dataItem[1].name,
                        value: geoCoordMap[dataItem[1].name].concat([dataItem[1].value])
                    };
                })
            });
    });

    option = {
        backgroundColor: '#404a59',
        title: {
            text: '模拟打击',
            left: 'center',
            textStyle: {
                color: '#08090b'
            }
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            top: 'top',
            left: 'right',
            // data: ['battle1 Top10', 'battle2 Top10', 'battle3 Top10'],
            data: ['a Top10', 'b Top10', 'c Top10'],
            textStyle: {
                color: '#08090b'
            },
            selectedMode: 'single'
        },
        dataRange: {
            min: 0,
            max: 100,
            x: 'right',
            calculable: true,
            color: ['#ff3333', 'orange', 'yellow', 'lime', 'aqua'],
            textStyle: {
                color: '#fff'
            }
        },

        // 百度地图
        bmap: {
            mapType: BMAP_HYBRID_MAP,
            center: [115.97, 29.71],
            zoom: 5,
            roam: true,
            addControl: true
        },

        // geo: {
        //     map: 'world',
        //     center: [115.97, 29.71],
        //     zoom: 5,
        //     label: {
        //         emphasis: {
        //             show: false
        //         }
        //     },
        //     roam: true,
        //     itemStyle: {
        //         normal: {
        //             areaColor: '#323c48',
        //             borderColor: '#404a59'
        //         },
        //         emphasis: {
        //             areaColor: '#2a333d'
        //         }
        //     }
        // },

        series: series
    };
    myChart.setOption(option);

</script>
<script>
    var speed = 10;
    var tab = document.getElementById('demo');
    var data = $("#data");

    function Marquee() {
        if (tab.scrollTop >= 103)//当滚动至demo1与demo2交界时
            tab.scrollTop = 0    //demo跳到最顶端
        else {
            tab.scrollTop++
        }
    }

    var demo = setInterval(Marquee, speed);
</script>

</body>
</html>