<%--
  Created by IntelliJ IDEA.
  User: xxm
  Date: 2018/1/24
  Time: 18:06
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
            <!-- top tiles -->
            <div class="row tile_count">
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <canvas id="watch" style=" width: 200px; height: 65px;"></canvas>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span style="font-size: 22px; font-weight: 600; color: #000000" class="count_top"> 导弹库</span>
                    <div class="count green">30种</div>
                    <span  style="font-size: 22px; font-weight: 600; color: #000000" class="count_bottom">可增改</span>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span  style="font-size: 22px; font-weight: 600; color: #000000" class="count_top"> 导弹最快射速</span>
                    <div class="count green">5马赫</div>
                    <span  style="font-size: 22px; font-weight: 600; color: #000000" class="count_bottom">美国爱国者防空导弹</span>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span  style="font-size: 22px; font-weight: 600; color: #000000" class="count_top"> 导弹最长射程</span>
                    <div class="count green">14000km</div>
                    <span   style="font-size: 22px; font-weight: 600; color: #000000" class="count_bottom">东风-41型洲际弹道导弹</span>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span style="font-size: 22px; font-weight: 600; color: #000000" class="count_top"> 导弹最短射程</span>
                    <div class="count green">10km</div>
                    <span  style="font-size: 22px; font-weight: 600; color: #000000" class="count_bottom">“红旗2号”地对空导弹</span>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span  style="font-size: 22px; font-weight: 600; color: #000000" class="count_top">机器学习算法种类</span>
                    <div class="count green">5种</div>
                    <span  style="font-size: 22px; font-weight: 600; color: #000000" class="count_bottom">模拟实现演习过程</span>
                </div>
            </div>
            <!-- /top tiles -->
            <br/>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel tile ">
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
                            <h4 style="font-size: 22px; font-weight: 600; color: #000000">导弹最长射程</h4>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">东风-41型洲际弹道导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">14000km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">巨浪2A导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 85.7%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">12000km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">东风5洲际导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 85.7%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">12000km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">东风-31洲际弹道导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 71.4%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">10000km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000"> 俄罗斯RT-2PM弹道导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 69%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">9976km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国三叉戟洲际弹道</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 52.8%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">7400km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国“三叉戟I”型C-4导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 52.8%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">7400km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">俄罗斯SS-20</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 35.7%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">5000km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">“东风-21”反舰弹道导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 22.8%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">3200km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">东风-3地地导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 19.3%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">2700km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">sm-62</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 14.2%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">2500km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国战斧巡航导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 14.2%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">2500km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国潘兴II</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 12.8%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">1800km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国天狮星巡航导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 12.1%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">1609km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">东风-15A近程弹道导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 4%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">600km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">"伊斯坎杰尔"－E</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 3.5%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">500km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">AGM-53“秃鹰”空对舰导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.8%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">110km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">AA-12“蝰蛇”</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.7%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">100km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">CY—1型反潜导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.6%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">85km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国爱国者防空导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.6%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">80km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">天剑二型导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.4%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">60km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">霹雳10空空导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.4%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">60km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">“飞龙2号”舰对舰导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.35%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">50km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">C801反舰导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.3%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">42km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">“凯山1号”地对空导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.3%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">42km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">“红旗2号”地对空导弹 </span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.25%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">35km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国“响尾蛇”导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.2%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">18.53km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国响尾蛇L型导弹</span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.2%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">18.53km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">“红旗61号”地对空导弹 </span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.15%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">10km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget_summary">
                                <div class="w_left w_25">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">美国“猎鹰”AIM-4空对空导弹 </span>
                                </div>
                                <div class="w_center w_55">
                                    <div class="progress">
                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 0.1%;">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="w_right w_20">
                                    <span style="font-size: 22px; font-weight: 600; color: #000000">8km</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-4 col-xs-12">
                    <div class="x_panel fixed_height_320">
                        <div class="x_title">
                            <h2 style="font-size: 24px; font-weight: 800; color: #000000">介绍</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <div class="dashboard-widget-content">

                                <ul class="list-unstyled timeline widget">
                                    <li>
                                        <div class="block">
                                            <div class="block_content">
                                                <h2 style="font-size: 22px; font-weight: 600; color: #000000" class="title">军事信息对抗</h2>
                                                <p  style="font-size: 22px; font-weight: 600; color: #000000" class="excerpt">
                                                    军事信息对抗是指现代电子技术与网络技术相融合，是综合化、信息化、一体化、网络化成为两军对抗的一种重要特征。而以敌方信息系统为主要目标，综合运用电子展和网络战手段，在整个作战空间对地网络化信息系统实施“网电一体战”，正在成为现代战场信息对抗的重要表现形式。
                                                    <%--and… <a href="https://baike.baidu.com/item/%E5%86%9B%E4%BA%8B%E4%BF%A1%E6%81%AF%E5%AF%B9%E6%8A%97/8859501?fr=aladdin">Read&nbsp;More</a>--%>
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-4 col-xs-12">
                    <div class="x_panel tile fixed_height_320 overflow_hidden">
                        <div class="x_title">
                            <h2 style="font-size: 24px; font-weight: 800; color: #000000">各国导弹占比</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <table class="" style="width:100%">
                                <tr>
                                    <th style="width:37%;">
                                        <p style="font-size: 22px; font-weight: 600; color: #000000">前5名</p>
                                    </th>
                                    <th>
                                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                            <p style="font-size: 22px; font-weight: 600; color: #000000" class="">国家</p>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                            <p  style="font-size: 22px; font-weight: 600; color: #000000" class="">百分比</p>
                                        </div>
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <div >
                                            <canvas style="height: 120%;width: 120%;" id="chart-area" />
                                        </div>
                                    </td>
                                    <td>
                                        <table class="tile_info">
                                            <tr>
                                                <td>
                                                    <p style="font-size: 22px; font-weight: 600; color: #000000"><i class="fa fa-square blue"></i>美国</p>
                                                </td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">38.8%</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p style="font-size: 22px; font-weight: 600; color: #000000"><i class="fa fa-square green"></i>俄罗斯</p>
                                                </td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">43.6%</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p style="font-size: 22px; font-weight: 600; color: #000000"><i class="fa fa-square red"></i>中国</p>
                                                </td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">4.8%</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p style="font-size: 22px; font-weight: 600; color: #000000"><i class="fa fa-square aero"></i>英国</p>
                                                </td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">2.4%</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p style="font-size: 22px; font-weight: 600; color: #000000"><i class="fa fa-square purple"></i>法国</p>
                                                </td>
                                                <td style="font-size: 22px; font-weight: 600; color: #000000">0.5%</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2 style="font-size: 22px; font-weight: 600; color: #000000">导弹数量</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="dashboard-widget-content">
                                        <div class="col-md-4 hidden-small">
                                            <h2 class="line_30" style="font-size: 22px; font-weight: 600; color: #000000">各国导弹数量</h2>
                                            <table class="countries_list">
                                                <tbody>
                                                <tr>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">美国</td>
                                                    <td class="fs15 fw700 text-right" style="font-size: 22px; font-weight: 600; color: #000000">450枚</td>
                                                </tr>
                                                <tr>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">俄罗斯</td>
                                                    <td class="fs15 fw700 text-right" style="font-size: 22px; font-weight: 600; color: #000000">400枚</td>
                                                </tr>
                                                <tr>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">中国</td>
                                                    <td class="fs15 fw700 text-right" style="font-size: 22px; font-weight: 600; color: #000000">50枚</td>
                                                </tr>
                                                <tr>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">英国</td>
                                                    <td class="fs15 fw700 text-right" style="font-size: 22px; font-weight: 600; color: #000000">25枚</td>
                                                </tr>
                                                <tr>
                                                    <td style="font-size: 22px; font-weight: 600; color: #000000">法国</td>
                                                    <td class="fs15 fw700 text-right" style="font-size: 22px; font-weight: 600; color: #000000">5枚</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div id="world-map-gdp" class="col-md-8 col-sm-12 col-xs-12"
                                             style="height:240px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/src/js/digit.js"></script>
<script src="/vendors/Chart.js/dist/Chart.bundle.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    /*电子表 watch*/
    var window_width = 150;
    var window_height = 300;
    var radius = 6;
    var margin_top = 5;
    var margin_left = 5;
    var hours = 0;
    var minutes = 0;
    var seconds = 0;
    var flag = 0;

    var config = {
        type: 'doughnut',
        data: {
            datasets: [{
                data: [
                    38.8,
                    43.6,
                    4.8,
                    2.4,
                    0.5,
                ],
                backgroundColor: [
                    "#3498DB",
                    "#005c2a",
                    "#e7000e",
                    "#9CC2CB",
                    "#9e00b6",
                ],
                label: 'Dataset 1'
            } ],
            labels: [
                "美国",
                "俄罗斯",
                "中国",
                "英国",
                "法国"
            ]
        },
        options: {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: ''
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }

    };

    window.onload = function () {
        var ctx = document.getElementById("chart-area").getContext("2d");
        window.myDoughnut = new Chart(ctx, config);
        /*电子表 watch*/
        var canvas = document.getElementById("watch");
        var context = canvas.getContext("2d");
        /*页面载入时先获取下当前时间，否则刚进入页面时小时、分钟和秒数初始值都是零*/
        var now = new Date();
        hours = now.getHours();
        minutes = now.getMinutes();
        seconds = now.getSeconds();
        window_width = document.body.clientWidth || document.documentElement.clientWidth;
        window_height = document.body.clientHeight || document.documentElement.clientHeight;
        margin_top = window_height * 0.1;
        margin_left = window_width * 0.05;
        canvas.width = window_width * 0.7;
        canvas.height = window_height * 0.17;
        var timer = setInterval(function () {
            if (!document.hidden) {
                update();
                render(context);
            }
        }, 50);
    }

    /*获取当前时间*/
    function currentTime() {
        var curTime = new Date();
        hours = curTime.getHours();
        minutes = curTime.getMinutes();
        seconds = curTime.getSeconds();
        return [hours, minutes, seconds];
    }

    /*负责数据的改变*/
    function update() {
        var beforeHours = hours;
        var beforeMinutes = minutes;
        var beforeSeconds = seconds;
        var nextTime = currentTime();
        var nextHours = currentTime()[0];
        var nextMinutes = currentTime()[1];
        var nextSeconds = currentTime()[2];
    }

    /*渲染出数字*/
    function render(cxt) {
        cxt.clearRect(0, 0, window_width, window_height);
        renderDigit(0, 0, parseInt(hours / 10), cxt);
        renderDigit(15 * (radius + 1), 0, parseInt(hours % 10), cxt);
        renderDigit(30 * (radius + 1), 0, 10, cxt);
        renderDigit(39 * (radius + 1), 0, parseInt(minutes / 10), cxt);
        renderDigit(54 * (radius + 1), 0, parseInt(minutes % 10), cxt);
        renderDigit(69 * (radius + 1), 0, 10, cxt);
        renderDigit(78 * (radius + 1), 0, parseInt(seconds / 10), cxt);
        renderDigit(93 * (radius + 1), 0, parseInt(seconds % 10), cxt);
    }

    function renderDigit(x, y, num, cxt) {
        cxt.fillStyle = "#303";
        for (var i = 0; i < digit[num].length; i++) {
            for (var j = 0; j < digit[num][i].length; j++) {
                if (digit[num][i][j] == 1) {
                    cxt.beginPath();
                    cxt.arc(margin_left + x + (2 * j + 1) * (radius + 1), margin_top + y + (2 * i + 1) * (radius + 1), radius, 0, Math.PI * 2, false);
                    cxt.closePath();
                    cxt.fill();
                }
            }
        }
    }
</script>

<%@include file="../framework/footer.jsp" %>
</body>
</html>

