<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">导弹参数</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li>
                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li>
                                        <a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                        <tr style="font-size: 22px; font-weight: 600; color: #ffffff" class="headings">
                                            <th class="column-title">编号</th>
                                            <th class="column-title">名称</th>
                                            <th class="column-title">模型</th>
                                            <th class="column-title">射程</th>
                                            <th class="column-title">精度</th>
                                            <th class="column-title">类型</th>
                                            <th class="column-title">准备</th>
                                            <th class="column-title">范围</th>
                                            <th class="column-title">速度</th>
                                            <th class="column-title">规格</th>
                                            <th class="column-title"></th>
                                        </tr>
                                        </thead>
                                        <tbody id="missileData">
                                        <c:if test="${not empty missiles}">
                                            <c:forEach var="missile" items="${missiles}">
                                                <tr class="even pointer">
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.id}</td>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missileName}</td>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missileModelName}</td>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missileEmission}</td>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missileAccuracy}</td>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missileWarheadType}</td>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missilePrepareTime}</td>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missileAttackArea}</td>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missileAttackSpeed}</td>
                                                        <%--<td>${missile.missileWarheadWeight}</td>--%>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">${missile.missileLength}</td>
                                                    <td>
                                                        <a style="font-size:24px; font-weight:700;  color: #ff000a;"
                                                           href="<c:url value="/missile/update/${missile.id}"/>">修改</a>
                                                    </td>
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
</div>
<!-- /page content -->

<%@include file="../framework/footer.jsp" %>

</body>
</html>
