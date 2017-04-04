<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="zh-hans-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="This is a system to verify capability.">
    <meta name="author" content="Jiajie Xu">
    <title>能力验证系统</title>

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

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="#">能力验证系统</a>
            <p class="navbar-text navbar-right">Signed in as <a class="navbar-link" href=""><%session.getAttribute("userName");%></a></p>
            <%--<button class="navbar-right btn btn-default navbar-btn" type="button" href="/login.jsp">登录</button>--%>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-1">
            <div class="panel panel-default index-panel">
                <div class="panel-body">
                    <p> </p>
                    <img src="${pageContext.request.contextPath}/img/index_main.jpg" class="center-block" alt="CapabilityVerificationSystem" height="300px">
                    <hr style="height:1px;width: 40%;border-top: 1px solid lightsteelblue"/>
                    <div class="col-md-2 col-md-offset-2"><img src="${pageContext.request.contextPath}/img/cnas.png" height="50px" alt="CNAS"></div>
                    <div class="col-md-2"><img src="${pageContext.request.contextPath}/img/taf.jpg" height="50px" alt="TAF"></div>
                    <div class="col-md-2"><img src="${pageContext.request.contextPath}/img/smec.png" height="50px" alt="SMEC"></div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default index-panel">
                <div class="panel-body">
                    <h5>欢迎</h5>
                    <p>进入2014年度海峡两岸能力验证</p>
                    <p class="text-right">——电子电器产品待机功率的检测</p>
                    <button class="btn btn-primary btn-hg btn-block index-btn">报名参加</button>
                    <button class="btn btn-primary btn-hg btn-block index-btn" onclick="window.location='/cvsystem/test'">结果上报</button>
                    <button class="btn btn-primary btn-hg btn-block index-btn">获取结果报告</button>
                    <small class="text-info">*本测试采用稳健统计法</small>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
