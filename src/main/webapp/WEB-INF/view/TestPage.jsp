<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html>
<html lang="zh-hans-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="This is a system to verify capability.">
    <meta name="author" content="Jiajie Xu">
    <title>能力验证</title>
    <!--Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/dist/css/vendor/bootstrap/css/bootstrap.min.css " rel="stylesheet">

    <!-- Flat UI -->
    <link href="${pageContext.request.contextPath}/dist/css/flat-ui.min.css" rel="stylesheet">

    <!-- main CSS-->
    <link href="${pageContext.request.contextPath}/dist/css/main.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/dist/js/vendor/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/vendor/video.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/flat-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/main.js"></script>
</head>
<body class="test-form-body">
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="#">2014年度海峡两岸能力验证<small>——结果表单</small></a>
            <p class="navbar-text navbar-right">登录用户：<%session.getAttribute("userName");%></p>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form class="form-horizontal" role="form" action="/cvsystem/submitTest" method="post">
                <p cla ss="text-danger">${errorMsg}</p>
                <div class="panel panel-warning test-panel">
                    <div class="panel-heading"><small>实验室信息</small></div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="labName" class="col-md-4 control-label">实验室名称</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="labName" name="labName" value="${ques.labName}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="labId" class="col-md-4 control-label">实验室代码</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="labId" name="labId" value="${ques.labId}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sampleId" class="col-md-4 control-label">样品编号</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="sampleId" name="sampleId" value="${result.sampleId}">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-warning test-panel">
                    <div class="panel-heading"><small>待机功耗测试结果</small></div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="initialTemp" class="col-md-4 control-label">试验开始时的环境温度temp1（℃）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="initialTemp" name="initialTemp" value="${result.initialTemp}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="initialRh" class="col-md-4 control-label">试验开始时的相对湿度RH1（%）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="initialRh" name="initialRh" value="${result.initialRh}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputVolt" class="col-md-4 control-label">输入电压（V)</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="inputVolt" name="inputVolt" value="${result.inputVolt}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputFreq" class="col-md-4 control-label">输入频率（Hz）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="inputFreq" name="inputFreq" value="${result.inputFreq}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="testCycleNum" class="col-md-4 control-label">测试周期数n1</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="testCycleNum" name="testCycleNum" value="${result.testCycleNum}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="totalTestTime" class="col-md-4 control-label">总测试时间t1（min）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="totalTestTime" name="totalTestTime" value="${result.totalTestTime}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="consumePower" class="col-md-4 control-label">耗电量E1（W.h）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="consumePower" name="consumePower" value="${result.consumePower}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="standbyPower" class="col-md-4 control-label">待机功率P1（W）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="standbyPower" name="standbyPower" value="${result.standbyPower}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="uncertain" class="col-md-4 control-label">功率测量的扩展不确定度U（W）包含因子（K=2）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="uncertain">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">计算不确定度时考虑的影响因子</label>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="affectFact" value="a">
                                        a.测试重复性误差
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="affectFact" value="b">
                                        b.读数误差
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="affectFact" value="c">
                                        c.测试仪器的精度
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="affectFact" value="d">
                                        d.电源电压的波动
                                    </label>
                                </div>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox" name="affectFact" aria-label="其他" id="otherFact">
                                        </span>
                                        <input type="text" class="form-control" name="affectFact" placeholder="其他" id="otherFactId">
                                    </div>
                                    <input type="hidden" name="affectFact" value="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8 col-md-offset-2">
                        <input type="submit" class="btn btn-primary form-control" value="提交结果">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
