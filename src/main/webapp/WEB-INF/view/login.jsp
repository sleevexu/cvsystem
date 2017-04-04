
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-hans-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="This is a system to verify capability.">
    <meta name="author" content="Jiajie Xu">
    <title>登录</title>
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
<body class="login-body">

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="login-panel panel panel-default">
                <div class="panel-heading login-heading">
                    <h3 class="panel-title">能力验证系统</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" action="/cvsystem/login" method="post">
                        <fieldset>
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon glyphicon glyphicon-user" id="user-addon"></span>
                                            <input class="form-control" placeholder="用户名" name="userName" autofocus aria-describedby="user-addon">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon glyphicon glyphicon-lock" id="password-addon"></span>
                                            <input class="form-control" placeholder="密码" name="userPassword" type="password" aria-describedby="password-addon">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <input type="submit" value="登录" class="btn btn-primary form-control">
                                        </div>
                                        <div class="col-md-6">
                                            <a href="/cvsystem/registerForm" class="btn btn-primary form-control" role="button">注册用户</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
