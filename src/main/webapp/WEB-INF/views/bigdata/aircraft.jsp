<%--
  Created by IntelliJ IDEA.
  User: Dionysos
  Date: 2018/6/9
  Time: 14:50
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
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">飞行器参数</h2>
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
                                        <tr style="font-size: 20px; font-weight: 600; color: #ffffff" class="headings">
                                            <th class="column-title">编号</th>
                                            <th class="column-title">类型</th>
                                            <th class="column-title">种类</th>
                                            <th class="column-title">名称</th>
                                            <th class="column-title">运营国家</th>
                                            <th class="column-title">操作服务</th>
                                            <th class="column-title">委托</th>
                                            <th class="column-title">退役</th>
                                            <th class="column-title">宽度</th>
                                            <th class="column-title">跨度</th>
                                            <th class="column-title">高度</th>
                                            <th class="column-title">空重</th>
                                            <%--<th class="column-title">最大重量</th>--%>
                                            <%--<th class="column-title">载荷</th>--%>
                                            <th class="column-title">人员</th>
                                            <th class="column-title">机动性</th>
                                            <th class="column-title">口径</th>
                                            <%--<th class="column-title">OODA循环</th>--%>
                                            <%--<th class="column-title">总耐力</th>--%>
                                            <th class="column-title">尺寸编码</th>
                                            <th class="column-title">跑道长度编码</th>
                                        </tr>
                                        </thead>
                                        <tbody id="missileData">
                                        <c:if test="${not empty aircrafts}">
                                            <c:forEach var="aircraft" items="${aircrafts}">
                                                <tr class="even pointer">
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.id}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.category}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.type}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.name}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.operatorcountry}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.operatorservice}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.yearcommissioned}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.yeardecommissioned}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.length}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.span}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.height}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.weightempty}</td>
                                                    <%--<td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.weightmax}</td>--%>
                                                    <%--<td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.weightpayload}</td>--%>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.crew}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.agility}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.climbrate}</td>
                                                    <%--<td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.oodacycle}</td>--%>
                                                    <%--<td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.totalendurance}</td>--%>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.physicalsizecode}</td>
                                                    <td style="font-size: 20px; font-weight: 600; color: #000000">${aircraft.runwaylengthcode}</td>
                                                        <%--<td>--%>
                                                        <%--<a style="font-size:24px; font-weight:700;  color: #ff000a;"--%>
                                                        <%--href="<c:url value="/missile/update/${missile.id}"/>">修改</a>--%>
                                                        <%--</td>--%>
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
