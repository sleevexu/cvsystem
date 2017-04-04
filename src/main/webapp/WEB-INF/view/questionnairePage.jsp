
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
            <a class="navbar-brand" href="#">2014年度海峡两岸能力验证<small>——问卷调查表</small></a>
            <p class="navbar-text navbar-right">Signed in as <a class="navbar-link" href="#">Xu Jiajie</a></p>
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
                            <label for="labaddress" class="col-md-4 control-label">实验室地址</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="labaddress">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="labstandard" class="col-md-4 control-label">参照使用的标准</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="labstandard">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">该标准是否获得CNAS或TAF认可</label>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="qualification" id="qualification1" value="option1">
                                        是
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="qualification" id="qualification2" value="option2">
                                        否
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="certification" class="col-md-4 control-label">CNAS或TAF认可证书号</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="certification">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">实验室类型</label>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="labtype" value="">
                                        CB实验室
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="labtype" value="">
                                        非CB体系第三方实验室
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="labtype" value="">
                                        制造商实验室
                                    </label>
                                </div>
                                <div class="col-lg-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="radio" name="labtype" aria-label="其他">
                                        </span>
                                        <input type="text" class="form-control" name="labtype" placeholder="其他">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="labprovince" class="col-md-4 control-label">实验室所在省份（直辖市）</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="labprovince">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-warning test-panel">
                    <div class="panel-heading"><small>环境条件</small></div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="col-md-4 control-label">试验在以下环境中进行</label>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="labenviro" value="">
                                        运行的环境试验箱中
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="labenviro" value="">
                                        温度受控的实验室环境
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="labenviro" value="">
                                        温度非受控的实验室环境
                                    </label>
                                </div>
                                <div class="col-lg-10">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="radio" name="labenviro" aria-label="其他">
                                        </span>
                                        <input type="text" class="form-control" name="labenviro" placeholder="其他">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">环境温度测量设备</label>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="tSensor" value="">
                                        温度计
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="tSensor" value="">
                                        热电偶
                                    </label>
                                </div>
                                <div class="col-lg-10">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="radio" name="tSensor" aria-label="其他">
                                        </span>
                                        <input type="text" class="form-control" name="tSensor" placeholder="其他">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-warning test-panel">
                                <div class="panel-heading"><small>试验条件</small></div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-md-1 col-md-offset-1 control-label"><h2>电源</h2></label>
                                        <div class="col-md-10">
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="powerModel">a.制造商/型号</label>
                                                <div class="col-md-6">
                                                    <input type="text" class="form-control" id="powerModel">
                                                </div>
                                            </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="powerVol">b.额定容量（VA）</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="powerVol">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" >c.电源稳压方式</label>
                                    <div class="col-md-6">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="volRegul" value="">
                                                自动
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="volRegul" value="">
                                                手动
                                            </label>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <input type="radio" name="volRegul" aria-label="其他">
                                                </span>
                                                <input type="text" class="form-control" name="volRegul" placeholder="其他">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="volStable">d.电压稳定性（%）</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="volStable">
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom:10px">
                                    <div class="col-md-8 col-md-offset-4">
                                        <small class="text-info">Reg V<sub>ld</sub> = [MAX(V<sub>ld,max</sub> - V<sub>nom</sub>; V<sub>nom</sub> - V<sub>ld,min</sub>)/V<sub>nom</sub>]×100%</small>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="freqStable">e.频率稳定性（%）</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="freqStable">
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom:10px">
                                    <div class="col-md-8 col-md-offset-4">
                                        <small class="text-info">Reg F<sub>ld</sub> = [MAX(F<sub>ld,max</sub> - F<sub>nom</sub>; F<sub>nom</sub> - F<sub>ld,min</sub>)/F<sub>nom</sub>]×100%</small>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="maxDistort">f.最大总体谐波失真（%）</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="maxDistort">
                                    </div>
                                </div>

                            </div>
                            <hr style="height: 20px;width: 80%;border-top: 2px dashed gold">
                            <div class="form-group">
                                <label class="col-md-1 col-md-offset-1 control-label"><h2>电参数仪表</h2></label>
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >a.类型</label>
                                        <div class="col-md-6">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="iType" value="">
                                                    功率表
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="iType" value="">
                                                    功率分析仪（无时间积分功能）
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="iType" value="">
                                                    功率分析仪（带时间积分功能）
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="iType" value="">
                                                    示波器
                                                </label>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                <span class="input-group-addon">
                                                    <input type="radio" name="iType" aria-label="其他">
                                                </span>
                                                    <input type="text" class="form-control" name="iType" placeholder="其他">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="iMade">b.制造商</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" id="iMade">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="iNo">c.型号</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" id="iNo">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="ivoltRange">d.电压量程（V）</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" id="ivoltRange">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="iVoltAccu">e.电压量程精度</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" id="iVoltAccu">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="iCurrentRange">f.电流量程（mA）</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" id="iCurrentRange">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="iCurrentAccu">g.电流量程精度</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" id="iCurrentAccu">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="iCompen">h.是否带有补偿功能</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" id="iCompen">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr style="height: 20px;width: 80%;border-top: 2px dashed gold">
                            <div class="form-group">
                                <label class="col-md-6 control-label" >为被测样品供电接线用插座端是否带有漏电保护</label>
                                <div class="col-md-6">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="elecProtect" value="">
                                            有
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="elecProtect" value="">
                                            无
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-warning test-panel">
                    <div class="panel-heading"><small>其他</small></div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="expirDate" class="col-md-4 control-label">试验日期</label>
                            <div class="col-md-6 col-md-offset-1">
                                <input type="text" class="form-control" id="expirDate">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">试验过程中有无对作业指导书的偏离</label>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="experDeviate" id="experDeviate" value="Deviate1">
                                        无
                                    </label>
                                </div>
                                <div class="col-md-12">
                                    <div class="input-group">
                                                <span class="input-group-addon">
                                                    <input type="radio" name="experDeviate" aria-label="有">
                                                </span>
                                        <input type="text" class="form-control" name="experDeviate" placeholder="有（具体说明）">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-md-4 control-label">其他认为有必要说明的事项</label>
                            <div class="col-md-6 col-md-offset-1">
                                <textarea class="form-control" rows="3" id="description"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">本次能力验证样品是否能够模拟实验室日常检测的实际情况</label>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="simuFact" value="">
                                        完全能够模拟
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="simuFact" value="">
                                        基本能够模拟
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="simuFact" value="">
                                        不能模拟
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="advice" class="col-md-4 control-label">对本计划的意见和建议</label>
                            <div class="col-md-6 col-md-offset-1">
                                <textarea class="form-control" rows="4" id="advice"></textarea>
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