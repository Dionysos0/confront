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
        <div class="right_col">
            <div>
                <img style="width: 100%;height: 618px;border: 3px solid rgba(0,0,0,0.85)" src="../images/el.png">
            </div>
            <div class="container">
                <div class="row">
                    <div class="" style="text-align: center">
                        <%--<form action="/question/${id}">--%>
                        <%--<center>--%>
                        <%--<p style="font-size: 40px; font-weight: 600; color: #000000">收到命令：${value}</p>--%>
                        <%--</center>--%>
                        <%--<input class="form-control" style="width: 100%;height: 100%" type="hidden"--%>
                        <%--placeholder="${value}">--%>
                        <%--<button class="btn btn-danger" style="width: 300px; height: 70px;font-size: 34px">立即生成决策方案--%>
                        <%--</button>--%>
                        <%--</form>--%>
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
