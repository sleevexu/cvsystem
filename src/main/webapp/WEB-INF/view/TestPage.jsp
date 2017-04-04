
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-hans-CN">
<head>
    <meta charset="utf-8">
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
</head>
<body class="test-form-body">
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="#">2014年度海峡两岸能力验证<small>——结果表单</small></a>
            <p class="navbar-text navbar-right">Signed in as <a class="navbar-link" href="#"><%session.getAttribute("userName");%></a></p>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form class="form-horizontal" role="form" action="#" method="post">
                <div class="panel panel-warning test-panel">
                    <div class="panel-heading"><small>实验室信息</small></div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="labname" class="col-md-4 control-label">实验室名称</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="labname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="labid" class="col-md-4 control-label">实验室代码</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="labid">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sampleid" class="col-md-4 control-label">样品编号</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="sampleid">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-warning test-panel">
                    <div class="panel-heading"><small>待机功耗测试结果</small></div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="temp1" class="col-md-4 control-label">试验开始时的环境温度temp1（℃）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="temp1">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="rh1" class="col-md-4 control-label">试验开始时的相对湿度RH1（%）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="rh1">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputVolt" class="col-md-4 control-label">输入电压（V)</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="inputVolt">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputFreq" class="col-md-4 control-label">输入频率（Hz）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="inputFreq">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="n1" class="col-md-4 control-label">测试周期数n1</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="n1">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="t1" class="col-md-4 control-label">总测试时间t1（min）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="t1">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="e1" class="col-md-4 control-label">耗电量E1（W.h）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="e1">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="p1" class="col-md-4 control-label">待机功率P1（W）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="p1">
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
                                        <input type="checkbox" name="affectFact" value="">
                                        a.测试重复性误差
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="affectFact" value="">
                                        b.读数误差
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="affectFact" value="">
                                        c.测试仪器的精度
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="affectFact" value="">
                                        d.电源电压的波动
                                    </label>
                                </div>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox" name="affectFact" aria-label="其他">
                                        </span>
                                        <input type="text" class="form-control" name="affectFact" placeholder="其他">
                                    </div>
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
