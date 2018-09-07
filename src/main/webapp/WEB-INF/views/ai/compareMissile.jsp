<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <br/>
                <div class="row">
                    <div class="col-md-12 col-sm-10 col-xs-12 widget_tally_box">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">导弹射程</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div id="highchart1" style="height: 370px; width: 100%;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-10 col-xs-12 widget_tally_box">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">导弹精度</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>

                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div id="highchart2" style="height: 370px; width: 100%;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-10 col-xs-12 widget_tally_box">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>准备时间</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>

                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div id="highchart3" style="height: 370px; width: 100%;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-10 col-xs-12 widget_tally_box">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">爆炸范围</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>

                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div id="highchart4" style="height: 370px; width: 100%;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-10 col-xs-12 widget_tally_box">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2 style="font-size: 24px; font-weight: 800; color: #000000">飞行速度</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>

                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div id="highchart5" style="height: 370px; width: 100%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->
    </div>
</div>
<%@include file="../framework/footer.jsp" %>
<script src="//code.highcharts.com/highcharts.js"></script>
<script language="JavaScript">
    $(document).ready(function() {
        var chart = {
            type: 'column'
        };
        var title = {
            text: '导弹射程'
        };
        var xAxis = {
            categories: ['东风5洲际导弹','东风-21“反舰弹道导弹','东风-15A近程弹道导弹','东风-31洲际弹道导弹','东风-41洲际弹道导弹'],
            crosshair: true
        };
        var yAxis = {
            min: 0,
            title: {
                text: 'km'
            }
        };
        var tooltip = {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:#005c2a;padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} km</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        };
        var plotOptions = {
            column: {
                pointPadding:0.1,
                borderWidth: 0
            }
        };
        var credits = {
            enabled: false
        };

        var series= [{
            name: '导弹射程',
            data: [12000, 3200, 600, 10000, 14000]
        }];

        var json = {};
        json.chart = chart;
        json.title = title;
        json.tooltip = tooltip;
        json.xAxis = xAxis;
        json.yAxis = yAxis;
        json.series = series;
        json.plotOptions = plotOptions;
        json.credits = credits;
        $('#highchart1').highcharts(json);

    });
</script>
<script language="JavaScript">
    $(document).ready(function() {
        var chart = {
            type: 'column'
        };
        var title = {
            text: '导弹精度'
        };
        var xAxis = {
            categories: ['东风5洲际导弹','东风-21“反舰弹道导弹','东风-15A近程弹道导弹','东风-31洲际弹道导弹','东风-41洲际弹道导弹'],
            crosshair: true
        };
        var yAxis = {
            min: 0,
            title: {
                text: 'm'
            }
        };
        var tooltip = {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:#005c2a;padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} m</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        };
        var plotOptions = {
            column: {
                pointPadding:0.1,
                borderWidth: 0
            }
        };
        var credits = {
            enabled: false
        };

        var series= [{
            name: '导弹精度',
            data: [500, 500, 500, 300, 150]
        }];

        var json = {};
        json.chart = chart;
        json.title = title;
        json.tooltip = tooltip;
        json.xAxis = xAxis;
        json.yAxis = yAxis;
        json.series = series;
        json.plotOptions = plotOptions;
        json.credits = credits;
        $('#highchart2').highcharts(json);

    });
</script>
<script language="JavaScript">
    $(document).ready(function() {
        var chart = {
            type: 'column'
        };
        var title = {
            text: '准备时间'
        };
        var xAxis = {
            categories: ['东风5洲际导弹','东风-21“反舰弹道导弹','东风-15A近程弹道导弹','东风-31洲际弹道导弹','东风-41洲际弹道导弹'],
            crosshair: true
        };
        var yAxis = {
            min: 0,
            title: {
                text: 'min'
            }
        };
        var tooltip = {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:#005c2a;padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} min</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        };
        var plotOptions = {
            column: {
                pointPadding:0.1,
                borderWidth: 0
            }
        };
        var credits = {
            enabled: false
        };

        var series= [{
            name: '准备时间',
            data: [30, 15, 30, 30, 30]
        }];

        var json = {};
        json.chart = chart;
        json.title = title;
        json.tooltip = tooltip;
        json.xAxis = xAxis;
        json.yAxis = yAxis;
        json.series = series;
        json.plotOptions = plotOptions;
        json.credits = credits;
        $('#highchart3').highcharts(json);

    });
</script>
<script language="JavaScript">
    $(document).ready(function() {
        var chart = {
            type: 'column'
        };
        var title = {
            text: '导弹爆炸范围'
        };
        var xAxis = {
            categories: ['东风5洲际导弹','东风-21“反舰弹道导弹','东风-15A近程弹道导弹','东风-31洲际弹道导弹','东风-41洲际弹道导弹'],
            crosshair: true
        };
        var yAxis = {
            min: 0,
            title: {
                text: 'm^2'
            }
        };
        var tooltip = {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:#005c2a;padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} m^2</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        };
        var plotOptions = {
            column: {
                pointPadding:0.1,
                borderWidth: 0
            }
        };
        var credits = {
            enabled: false
        };
        var series= [{
            name: '导弹爆炸范围',
            data: [30000, 50000, 50000, 200000, 1000000]
        }];
        var json = {};
        json.chart = chart;
        json.title = title;
        json.tooltip = tooltip;
        json.xAxis = xAxis;
        json.yAxis = yAxis;
        json.series = series;
        json.plotOptions = plotOptions;
        json.credits = credits;
        $('#highchart4').highcharts(json);
    });
</script>
<script language="JavaScript">
    $(document).ready(function() {
        var chart = {
            type: 'column'
        };
        var title = {
            text: '导弹飞行速度'
        };
        var xAxis = {
            categories: ['东风5洲际导弹','东风-21“反舰弹道导弹','东风-15A近程弹道导弹','东风-31洲际弹道导弹','东风-41洲际弹道导弹'],
            crosshair: true
        };
        var yAxis = {
            min: 0,
            title: {
                text: "马赫"
            }
        };
        var tooltip = {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:#005c2a;padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} 马赫</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        };
        var plotOptions = {
            column: {
                pointPadding:0.1,
                borderWidth: 0
            }
        };
        var credits = {
            enabled: false
        };
        var series= [{
            name: '导弹飞行速度',
            data: [2.5, 2.5, 2.5 , 3,  4]
        }];
        var json = {};
        json.chart = chart;
        json.title = title;
        json.tooltip = tooltip;
        json.xAxis = xAxis;
        json.yAxis = yAxis;
        json.series = series;
        json.plotOptions = plotOptions;
        json.credits = credits;
        $('#highchart5').highcharts(json);
    });
</script>
</body>
</html>
