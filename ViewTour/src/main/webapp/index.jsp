<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>注册</title>

    <link rel="stylesheet" href="../../vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">

    <link rel="stylesheet" href="../../css/style.css">
    <link rel="shortcut icon" href="../../images/favicon.png" />
    <style>
        .navbar.default-layout-navbar .navbar-brand-wrapper .navbar-brand img {
            width: 200px;
            height: 60px;
        }
        .form-group span{
            font-size: 13px;
            color:  #b66dff;
            padding-top: 7px;
            display: block;
        }
    </style>
</head>

<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" style=" border-bottom: 1px solid #cccccc;">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo" href="../../index.html"><img src="../../images/logo.png" alt="logo"/></a>
            <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../images/logo-mini.svg" alt="logo"/></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
            <div class="search-field d-none d-md-block">
                <form class="d-flex align-items-center h-100" action="#">
                    <div class="input-group">
                        <div class="input-group-prepend bg-transparent">
                            <i class="input-group-text border-0 mdi mdi-magnify"></i>
                        </div>
                        <input type="text" class="form-control bg-transparent border-0" placeholder="Search projects">
                    </div>
                </form>
            </div>
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item nav-profile dropdown">
                    <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                        <div class="nav-profile-img">
                            <img src="../../images/faces/face1.jpg" alt="image">
                            <span class="availability-status online"></span>
                        </div>
                        <div class="nav-profile-text">
                            <p class="mb-0 text-black">个人中心</p>
                        </div>
                    </a>
                    <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                        <a class="dropdown-item" href="login.html">
                            <i class="mdi mdi-cached mr-2 text-success"></i>
                            登录
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">
                            <i class="mdi mdi-logout mr-2 text-primary"></i>
                            退出
                        </a>
                    </div>
                </li>
                <li class="nav-item d-none d-lg-block full-screen-link">
                    <a class="nav-link">
                        <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                        <i class="mdi mdi-email-outline"></i>
                        <span class="count-symbol bg-warning"></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                        <h6 class="p-3 mb-0">消息中心</h6>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <img src="../../images/faces/face4.jpg" alt="image" class="profile-pic">
                            </div>
                            <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                <h6 class="preview-subject ellipsis mb-1 font-weight-normal">发送消息</h6>
                                <p class="text-gray mb-0">
                                    1 Minutes ago
                                </p>
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <img src="../../images/faces/face3.jpg" alt="image" class="profile-pic">
                            </div>
                            <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                <h6 class="preview-subject ellipsis mb-1 font-weight-normal">发送消息</h6>
                                <p class="text-gray mb-0">
                                    18 Minutes ago
                                </p>
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <h6 class="p-3 mb-0 text-center">4 new messages</h6>
                    </div>
                </li>
                <li class="nav-item nav-settings d-none d-lg-block">
                    <a class="nav-link" href="../../index.html">
                        返回首页
                    </a>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
</div>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
            <div class="row w-100">
                <div class="col-lg-4 mx-auto">
                    <div class="auth-form-light text-left p-5">
                        <div class="brand-logo">
                            <img src="../../images/logo.png">
                        </div>
                        <form class="pt-3" action="http://localhost:8080/view/user/register" method="post" onsubmit="return checkForm()">
                            <div class="form-group">
                                <input type="text" name="userName" value="" class="form-control form-control-lg" id="userName" placeholder="Username">
                                <span id="usernameMsg"></span>
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" value="" class="form-control form-control-lg" id="email" placeholder="Email">
                                <span id="emailMsg"></span>
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" value="" class="form-control form-control-lg" id="passWord" placeholder="Password">
                                <span id="passwordMsg"></span>
                            </div>
                            <div class="mt-3">
                                <input type="submit" value="注册" class="btn btn-block btn-gradient-danger btn-lg font-weight-medium auth-form-btn" />
                            </div>
                            <div class="text-left mt-4 font-weight-light">
                                已经注册? <a href="login.jsp" class="text-primary" style="float: right">去登录</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    function checkForm() {
        let username = document.getElementById('userName').value;
        let password = document.getElementById('passWord').value;
        let email = document.getElementById('email').value;
        let usernameMessage = document.getElementById('usernameMsg');
        let passwordMessage = document.getElementById('passwordMsg');
        let emailMessage = document.getElementById('emailMsg');
        let reg1 = new RegExp( "^[0-9a-zA-Z_\u4e00-\u9fa5]{1,15}$");
        let reg2 = new RegExp( "^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$");
        if(!reg1.test(username)){
            usernameMessage.innerText = '! 用户名必须为15位以下的字母数字或汉字';
            return false;
        }
        if(password.length <= 6){
            passwordMessage.innerText = '! 密码不得少于六位';
            return false;
        }
        if(reg2.test(email)){
            emailMessage.innerText = '! 请输入正确的邮箱账号';
            return false;
        }
        usernameMessage.innerText = '';
        passwordMessage.innerText = '';
        return true;
    }
</script>
<script src="../../vendors/js/vendor.bundle.base.js"></script>
<script src="../../vendors/js/vendor.bundle.addons.js"></script>
</body>

</html>
