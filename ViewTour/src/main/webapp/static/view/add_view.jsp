<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>添加景点</title>
    <link rel="stylesheet" href="../../vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="shortcut icon" href="../../images/favicon.png" />
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <style>
        .navbar.default-layout-navbar .navbar-brand-wrapper .navbar-brand img {
            width: 200px;
            height: 65px;
        }
        .form-control {
            border: 1px solid #d3d6dd;
            font-family: "ubuntu-regular", sans-serif;
            font-size: 0.8125rem;
            display: inline-block;
            width: 80%;
        }
        .form-group label {
            font-size: 0.875rem;
            line-height: 1;
            vertical-align: top;
            margin-top: 0.8rem;
        }
        .form_card{
            margin: 10px auto;
            background: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }
        .forms-sample{
            text-align: center;
            margin-top: 5%;
        }
    </style>
</head>
<body>
<div class="container-scroller">
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" style=" border-bottom: 1px solid #cccccc;">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo" href="../../index.jsp"><img src="../../images/logo.png" alt="logo"/></a>
            <a class="navbar-brand brand-logo-mini" href="../../index.jsp"></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
            <div class="search-field d-none d-md-block">
                <form class="d-flex align-items-center h-100" action="#">
                    <div class="input-group">
                        <div class="input-group-prepend bg-transparent">
                            <i class="input-group-text border-0 mdi mdi-magnify"></i>
                        </div>
                        <input type="text" id="search" value="" class="form-control bg-transparent border-0" placeholder="按照景点名搜索" onkeydown="load()">
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
                        <a class="dropdown-item" href="../login/login.jsp">
                            <i class="mdi mdi-cached mr-2 text-success"></i>
                            个人中心
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
                    <a class="nav-link" href="#">
                        <i class="mdi mdi-format-line-spacing"></i>
                    </a>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
    <div class="container-fluid page-body-wrapper">
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item nav-profile">
                    <a href="#" class="nav-link">
                        <div class="nav-profile-image">
                            <img src="../../images/faces/face1.jpg" alt="profile">
                            <span class="login-status online"></span>
                        </div>
                        <div class="nav-profile-text d-flex flex-column">
                            <span class="font-weight-bold mb-2">${sessionScope.user}</span>
                            <span class="text-secondary text-small">管理员</span>
                        </div>
                        <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../../index.jsp">
                        <span class="menu-title">首页</span>
                        <i class="mdi mdi-home menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                        <span class="menu-title">景点管理</span>
                        <i class="menu-arrow"></i>
                        <i class="mdi mdi-crosshairs-gps menu-icon"></i>
                    </a>
                    <div class="collapse" id="ui-basic">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="list_view.jsp">景点列表</a></li>
                            <li class="nav-item"> <a class="nav-link" href="add_view.jsp">添加景点</a></li>
                            <li class="nav-item"> <a class="nav-link" href="modify_view.jsp">删改景点</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../router/router_curd.jsp">
                        <span class="menu-title">旅游路线管理</span>
                        <i class="mdi mdi-assistant menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../food/around_foods.jsp">
                        <span class="menu-title">周边饮食管理</span>
                        <i class="mdi mdi-heart-box-outline menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../around_view/around_views.jsp">
                        <span class="menu-title">周边景点管理</span>
                        <i class="mdi mdi-assistant menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../hotel/around_hotel.jsp">
                        <span class="menu-title">周边住宿管理</span>
                        <i class="mdi mdi-apps menu-icon"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="page-header">
                    <h3 class="page-title">
                        景点管理
                    </h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">添加景点</a></li>
                            <li class="breadcrumb-item active" aria-current="page">景点管理</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-12 grid-margin stretch-card form_card">
                    <div class="card">
                        <div class="card-body" style="background: #ffffff;">
                            <h4 class="card-title">填写景点信息</h4>
                            <h4 style="float: right;position: relative;top: -3%;"><a href="javascript:history.back(-1)">返回</a></h4>
                            <hr>
                            <form class="forms-sample" action="http://localhost:8080/tour/viewAdd" method="post">
                                <div class="form-group">
                                    <label for="exampleInputName">景点名称：</label>
                                    <input type="text" value="" name="viewName" class="form-control" id="exampleInputName" placeholder="请输入景点名称 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputAddress">景点位置：</label>
                                    <input type="text"  value="" name="viewAddress" class="form-control" id="exampleInputAddress" placeholder="请输入景点位置 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPrice">门票价钱：</label>
                                    <input type="text"  value="" name="viewPrice" class="form-control" id="exampleInputPrice" placeholder="请输入门票价钱 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputTime">开发时间：</label>
                                    <input type="text"  value="" name="viewDate" class="form-control" id="exampleInputTime" placeholder="请输入开发时间 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputType">景点类别：</label>
                                    <input type="text"  value="" name="viewType" class="form-control" id="exampleInputType" placeholder="请输入景点类别 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputopenTime">开放时间：</label>
                                    <input type="text"  value="" name="openTime" class="form-control" id="exampleInputopenTime" placeholder="请输入开放时间 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputticketInfo">票务信息：</label>
                                    <input type="text"  value="" name="ticketInfo" class="form-control" id="exampleInputticketInfo" placeholder="请输入票务信息 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputbusRouter">公交路线：</label>
                                    <input type="text"  value="" name="busRouter" class="form-control" id="exampleInputbusRouter" placeholder="请输入公交路线 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputnetLocate">官方网站：</label>
                                    <input type="text"  value="" name="netLocate" class="form-control" id="exampleInputnetLocate" placeholder="请输入官方网站 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputconnectAddress">联系地址：</label>
                                    <input type="text"  value="" name="connectAddress" class="form-control" id="exampleInputconnectAddress" placeholder="请输入联系地址 ...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleTextarea1">景点介绍：</label>
                                    <textarea class="form-control"   name="viewDesc" id="exampleTextarea1" rows="4" placeholder="请输入景点介绍 ..."></textarea>
                                </div>
                                <div class="form-group" style="width: 87%;text-align: left;margin: 0 auto">
                                    <label>上传景点图片:</label>
                                    <input type="file" name="viewImg" class="file-upload-default">
                                    <div class="input-group col-xs-12" style="  border: none;">
                                        <input type="text"  value="" name="viewImg" class="form-control file-upload-info" disabled placeholder="Upload Image">
                                        <span class="input-group-append">
                                            <button class="file-upload-browse btn btn-gradient-danger btn-fw" type="button">上传</button>
                                        </span>
                                    </div>
                                </div>
                                <div style="text-align: center;margin-top: 10%;border-top: 1px solid #cccccc;padding-top: 20px">
                                    <button type="submit" class="btn btn-gradient-danger btn-fw">提交</button>
                                    <button class="btn btn-gradient-light btn-fw " style="margin-left: 10%">取消</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../../js/search.js"></script>
<script src="../../vendors/js/vendor.bundle.base.js"></script>
<script src="../../vendors/js/vendor.bundle.addons.js"></script>
<script src="../../js/file-upload.js"></script>
</body>
</html>