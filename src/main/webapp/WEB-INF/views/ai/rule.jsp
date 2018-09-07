<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="../framework/header.jsp" %>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%@include file="../framework/leftSide.jsp" %>
        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="clearfix"></div>
                <div class="row">
                    <div class="clearfix"></div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">导弹攻击规则</h2>
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
                                    <%-- close --%>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                                    <%-- \close--%>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                        <tr style="font-size: 22px; font-weight: 600; color: #ffffff" class="headings">
                                            <th class="column-title">编号</th>
                                            <th class="column-title">规则</th>
                                            <th class="column-title"></th>
                                        </tr>
                                        </thead>
                                        <tbody id="missileData">
                                        <c:if test="${not empty attackRules}">
                                            <c:forEach var="attackRule" items="${attackRules}">
                                                <tr style="font-size: 22px; font-weight: 600; color: #000000" class="even pointer">
                                                    <td>${attackRule.id}</td>
                                                    <td>${attackRule.ruleValue}</td>
                                                    <td></td>
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

                <div class="clearfix"></div>
                <div class="row">
                    <div class="clearfix"></div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">导弹防御规则</h2>
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
                                    <%-- close --%>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                                    <%-- \close--%>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                        <tr style="font-size: 22px; font-weight: 600; color: #ffffff" class="headings">
                                            <th class="column-title">编号</th>
                                            <th class="column-title">规则</th>
                                        </tr>
                                        </thead>
                                        <tbody id="missileData5">
                                        <c:if test="${not empty defenderRules}">
                                            <c:forEach var="defenderRule" items="${defenderRules}">
                                                <tr style="font-size: 22px; font-weight: 600; color: #000000" class="even pointer">
                                                    <td>${defenderRule.id}</td>
                                                    <td>${defenderRule.ruleValue}</td>
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
    </div>
    <!-- /page content -->

    <%@include file="../framework/footer.jsp" %>

</body>
</html>
