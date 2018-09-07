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
                <div class="page-title">
                    <div class="title_left">
                        <h3 style="font-size: 26px; font-weight: 900; color: #000000">防御规则表</h3>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">新增一种防御方案</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <%--<li class="dropdown">--%>
                                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"--%>
                                           <%--aria-expanded="false"><i class="fa fa-wrench"></i></a>--%>
                                        <%--<ul class="dropdown-menu" role="menu">--%>
                                            <%--<li><a href="#">Settings 1</a>--%>
                                            <%--</li>--%>
                                            <%--<li><a href="#">Settings 2</a>--%>
                                            <%--</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <form:form action="/ruleDefender/new.do" modelAttribute="ruleDefender"
                                           method="post"
                                           class="form-horizontal form-label-left">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000" class="section">参数细节</span>

                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="name">规则细节 <span
                                                class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="ruleValue" id="name"
                                                        class="form-control col-md-7 col-xs-12"
                                                        name="value"
                                                        placeholder="if 导弹弹头为1 then 发射2枚导弹拦截"
                                                        required="required" type="text"/>
                                        </div>
                                    </div>
                                    <div class="ln_solid"></div>
                                    <div  style="text-align: center"  class="form-group">
                                        <div class="col-md-6 col-md-offset-3">
                                            <button type="submit"
                                                    class="btn btn-primary">取消
                                            </button>
                                            <button id="send" type="submit" class="btn btn-success">提交</button>
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
