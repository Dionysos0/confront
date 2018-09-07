<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
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

        .my-map {
            margin: 0 0;
            width: 100%;
            height: 618px;
            position: relative;
        }

        .my-map .icon {
            background: url(http://lbs.amap.com/console/public/show/marker.png) no-repeat;
        }

        .my-map .icon-flg {
            height: 32px;
            width: 29px;
        }

        .my-map .icon-flg-red {
            background-position: -65px -5px;
        }

        .my-map .icon-flg-blue {
            background-position: -65px -55px;
        }

        .amap-container {
            height: 100%;
        }

        /*消去高德logo代码*/
        .amap-logo, .amap-copyright {
            display: none !important;
        }

        * {
            font-size: 20px;
        }
    </style>
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%--<%@include file="framework/leftSide.jsp" %>--%>
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


        <%--page content--%>
        <div class="right_col">
            <%--map--%>
            <div id="wrap" class="my-map">
                <div id="mapContainer"></div>
            </div>

            <div class="container">
                <form action="/attack/${id}" style="text-align: center">
                    <button class="btn bt-lg btn-danger"
                            style="width: 280px; height: 70px;font-size: 34px">对抗演练开始
                    </button>
                </form>
                <%--<a style="text-align: center;" href="/attack/${id}">攻击</a>--%>
                <div id="missileData" class="row">
                    <div class="col-md-6">
                        <table class="table  jambo_table bulk_action ">
                            <thead>
                            <tr class="headings">
                                <th class="column-title">红方基地坐标</th>
                                <th class="column-title">红方拥有导弹</th>
                            </tr>
                            </thead>

                            <tbody>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(0)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="0" end="3" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(1)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="4" end="7" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(2)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="8" end="11" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(3)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="12" end="15" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(4)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="16" end="19" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(5)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="20" end="23" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(6)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="24" end="27" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(7)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="28" end="31" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(8)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="32" end="35" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td style="font-size: 22px; font-weight: 600; color: #000000" class="">
                                    <c:out value="${armyPoints.get(9)}"></c:out>
                                </td>
                                <td style="font-size: 22px; font-weight: 600; color: #000000">
                                    <c:forEach begin="36" end="39" items="${missileNameList}" var="missileName">
                                        <c:out value="${missileName}"></c:out><br>
                                    </c:forEach>
                                </td>
                            </tr>

                            </tbody>

                        </table>
                    </div>

                    <div class="col-md-6">
                        <table id="" class="table  jambo_table bulk_action ">
                            <thead>
                            <tr class="headings">
                                <th class="column-title">蓝方基地坐标</th>
                                <th class="column-title">蓝方拥有的导弹</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach var="baseEnemyPoint" items="${enemyPoints}">
                                <tr class="even pointer">
                                    <td style="font-size: 22px; font-weight: 600; color: #000000">
                                        <c:out value="${baseEnemyPoint}"></c:out>
                                    </td>
                                    <td style="font-size: 22px; font-weight: 600; color: #000000">
                                        <c:forEach begin="40" items="${missileNameList}" var="missileName">
                                            <c:out value="${missileName}"></c:out><br>
                                        </c:forEach>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../framework/footer.jsp" %>
        <script src="//webapi.amap.com/maps?v=1.3&key=8325164e247e15eea68b59e89200988b"></script>
        <script>
            !function () {
                var infoWindow, map, level = 3,
                    center = {lng: 112.71997, lat: 39.433821},
                    features = [{
                        type: "Marker",
                        name: "红方",
                        desc: "阵营1",
                        color: "red",
                        icon: "flg",
                        offset: {x: -12, y: -26},
                        lnglat: {
                            lng: ${baseEnemyPoints.get(0).get(0)},
                            lat: ${baseEnemyPoints.get(1).get(0)}
                        }
                    },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营2",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(1)},
                                lat: ${baseEnemyPoints.get(1).get(1)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营3",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(2)},
                                lat: ${baseEnemyPoints.get(1).get(2)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营4",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(3)},
                                lat: ${baseEnemyPoints.get(1).get(3)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营5",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(4)},
                                lat: ${baseEnemyPoints.get(1).get(4)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营6",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(5)},
                                lat: ${baseEnemyPoints.get(1).get(5)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营7",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(6)},
                                lat: ${baseEnemyPoints.get(1).get(6)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营8",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(7)},
                                lat: ${baseEnemyPoints.get(1).get(7)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营9",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(8)},
                                lat: ${baseEnemyPoints.get(1).get(8)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "红方",
                            desc: "阵营10",
                            color: "red",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseEnemyPoints.get(0).get(9)},
                                lat: ${baseEnemyPoints.get(1).get(9)}
                            }
                        },

                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营1",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(0)},
                                lat: ${baseArmyPoints.get(1).get(0)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营2",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(1)},
                                lat: ${baseArmyPoints.get(1).get(1)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营3",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(2)},
                                lat: ${baseArmyPoints.get(1).get(2)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营4",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(3)},
                                lat: ${baseArmyPoints.get(1).get(3)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营5",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(4)},
                                lat: ${baseArmyPoints.get(1).get(4)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营6",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(5)},
                                lat: ${baseArmyPoints.get(1).get(5)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营7",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(6)},
                                lat: ${baseArmyPoints.get(1).get(6)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营8",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(7)},
                                lat: ${baseArmyPoints.get(1).get(7)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营9",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(8)},
                                lat: ${baseArmyPoints.get(1).get(8)}
                            }
                        },
                        {
                            type: "Marker",
                            name: "蓝方",
                            desc: "阵营10",
                            color: "blue",
                            icon: "flg",
                            offset: {x: -12, y: -26},
                            lnglat: {
                                lng: ${baseArmyPoints.get(0).get(9)},
                                lat: ${baseArmyPoints.get(1).get(9)}
                            }
                        }
                    ];

                function loadFeatures() {
                    for (var feature, data, i = 0, len = features.length, j, jl, path; i < len; i++) {
                        data = features[i];
                        switch (data.type) {
                            case "Marker":
                                feature = new AMap.Marker({
                                    map: map,
                                    position: new AMap.LngLat(data.lnglat.lng, data.lnglat.lat),
                                    zIndex: 3,
                                    extData: data,
                                    offset: new AMap.Pixel(data.offset.x, data.offset.y),
                                    title: data.name,
                                    content: '<div class="icon icon-' + data.icon + ' icon-' + data.icon + '-' + data.color + '"></div>'
                                });
                                break;
                            case "Polyline":
                                for (j = 0, jl = data.lnglat.length, path = []; j < jl; j++) {
                                    path.push(new AMap.LngLat(data.lnglat[j].lng, data.lnglat[j].lat));
                                }
                                feature = new AMap.Polyline({
                                    map: map,
                                    path: path,
                                    extData: data,
                                    zIndex: 2,
                                    strokeWeight: data.strokeWeight,
                                    strokeColor: data.strokeColor,
                                    strokeOpacity: data.strokeOpacity
                                });
                                break;
                            case "Polygon":
                                for (j = 0, jl = data.lnglat.length, path = []; j < jl; j++) {
                                    path.push(new AMap.LngLat(data.lnglat[j].lng, data.lnglat[j].lat));
                                }
                                feature = new AMap.Polygon({
                                    map: map,
                                    path: path,
                                    extData: data,
                                    zIndex: 1,
                                    strokeWeight: data.strokeWeight,
                                    strokeColor: data.strokeColor,
                                    strokeOpacity: data.strokeOpacity,
                                    fillColor: data.fillColor,
                                    fillOpacity: data.fillOpacity
                                });
                                break;
                            default:
                                feature = null;
                        }
                        if (feature) {
                            AMap.event.addListener(feature, "click", mapFeatureClick);
                        }
                    }
                }

                function mapFeatureClick(e) {
                    if (!infoWindow) {
                        infoWindow = new AMap.InfoWindow({autoMove: true});
                    }
                    var extData = e.target.getExtData();
                    infoWindow.setContent("<h5>" + extData.name + "</h5><div>" + extData.desc + "</div>");
                    infoWindow.open(map, e.lnglat);
                }

                map = new AMap.Map("mapContainer", {
                    center: new AMap.LngLat(center.lng, center.lat),
                    // 禁止缩放
                    zoomEnable: false,
                    // 禁止拖动
                    // dragEnable: false,
                    level: level
                });
                new AMap.TileLayer.Satellite({map: map, zIndex: 1});
                // 加载标点函数
                loadFeatures();

                map.on('complete', function () {
                    map.plugin(["AMap.ToolBar", "AMap.OverView"], function () {
                        map.addControl(new AMap.ToolBar({ruler: false, direction: false, locate: false}));
                        map.addControl(new AMap.OverView);
                    });
                })

            }();
        </script>
    </div>
</div>
</body>
</html>