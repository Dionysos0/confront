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
                        <h3 style="font-size: 24px; font-weight: 800; color: #000000">导弹信息表</h3>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 22px; font-weight: 600; color: #000000">新增一枚导弹
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

                                <form:form action="/newMissile.do" modelAttribute="missile"
                                           method="post"
                                           class="form-horizontal form-label-left">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000" class="section">参数细节</span>

                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="name">导弹名称 <span
                                                class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileName" id="name"
                                                        class="form-control col-md-7 col-xs-12"
                                                        name="name"
                                                        placeholder="东风5洲际导弹"
                                                        required="required" type="text"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="model">导弹模型 <span
                                                class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileModelName" id="model"
                                                        class="form-control col-md-7 col-xs-12"
                                                        name="name"
                                                        placeholder="惯性三轴静压气浮陀螺+空间计算机"
                                                        required="required" type="text"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="emission">导弹射程
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileEmission" type="text" id="emission" name="emission"
                                                        required="required"
                                                        placeholder="12000公里"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="accuracy">精度
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileAccuracy" id="accuracy" type="text" name="accuracy"
                                                        required="required"
                                                        placeholder="500米"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="type">导头类型
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileWarheadType" type="text" id="type" name="type"
                                                        required="required"
                                                        placeholder="热核弹头、分导式核弹头"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="time">准备时长
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missilePrepareTime" id="time" type="text" name="time"
                                                        data-validate-length-range="5,20"
                                                        placeholder="30～60分钟"
                                                        class="optional form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="area">打击范围
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileAttackArea" id="area" type="text" name="area"
                                                        required="required"
                                                        placeholder="3万平方米"
                                                        data-validate-length-range="8,20"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="speed">速度
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileAttackSpeed" type="text" id="speed" name="phone"
                                                        required="required"
                                                        placeholder="2.5马赫"
                                                        data-validate-length-range="8,20"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label style="font-size: 22px; font-weight: 600; color: #000000" class="control-label col-md-3 col-sm-3 col-xs-12" for="length">导弹规格
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="missileLength" type="text" id="length" name="phone"
                                                        required="required"
                                                        placeholder="32.6m"
                                                        data-validate-length-range="8,20"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>

                                    <div class="ln_solid"></div>
                                    <div style="text-align: center" class="form-group">
                                        <div class="col-md-6 col-md-offset-3">
                                            <button href="<c:url value="/missile/"/>" type="submit"
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
