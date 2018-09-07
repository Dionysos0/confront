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
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">潜艇参数</h2>
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
                                            <th class="column-title">类型</th>
                                            <th class="column-title">名称</th>
                                            <th class="column-title">生产国家</th>
                                            <th class="column-title">服役国家</th>
                                            <th class="column-title">服役年限</th>
                                            <th class="column-title">退役年限</th>
                                            <th class="column-title">携带导弹</th>
                                            <th class="column-title">下潜</th>
                                            <th class="column-title">损伤容限</th>
                                            <th class="column-title">艇长</th>
                                            <th class="column-title">艇宽</th>
                                            <th class="column-title">艇高</th>
                                            <%--<th class="column-title">艇高</th>--%>
                                            <th class="column-title">标准排水量</th>
                                            <th class="column-title">满载排水量</th>
                                            <th class="column-title">艇员</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="submarine" items="${submarines}">
                                            <tr class="even pointer">
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.id}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.type}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.name}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.operatorcountry}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.operatorservice}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.yearcommissioned}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.yeardecommissioned}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.comments}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.maxdepth}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.damagepoints}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.length}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.beam}</td>
                                                <%--<td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.draft}</td>--%>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.height}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.displacementstandard}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.displacementfull}</td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">${submarine.crew}</td>
                                            </tr>
                                        </c:forEach>
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
