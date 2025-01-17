<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>周边美食</title>
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
        .table th, .table td {
            vertical-align: middle;
            font-size: 0.875rem;
            line-height: 1.5;
            min-width: 90px;
        }
        .table th:nth-child(5), .table td:nth-child(5){
            text-align: center;
        }
        .grid-margin .card .view_img_main{
            width: 50px;
            height: 50px;
            border-radius: 5px;
        }
        .table-bordered thead th {
            text-align: center;
        }
        .table-bordered tbody td {
            text-align: center;
        }
        .btn.btn-fw {
            min-width: 75px;
        }
        .btn {
            padding: 0.5rem;
        }
        a:hover{
            text-decoration: none;
            color: white;
        }
        #cover_add{
            width: 100%;
            height: 100%;
            background: #000;
            position: absolute;
            left: 0;
            top: 0;
            filter: alpha(opacity=30);
            opacity: 0.3;
            display: none;
            z-index: 2
        }
        #alert_add{
            width: 100%;
            margin: 0 auto;
            height: 9.5rem;
            /*border: 1px solid #999;*/
            display: none;
            position:fixed;
            top: 13%;
            left: 10%;
            z-index: 3;
            background: transparent;
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
                            <i class="mdi mdi-logout mr-2 text-success"></i>
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
                            <li class="nav-item"> <a class="nav-link" href="../view/list_view.jsp">景点列表</a></li>
                            <li class="nav-item"> <a class="nav-link" href="../view/add_view.jsp">添加景点</a></li>
                            <li class="nav-item"> <a class="nav-link" href="../view/modify_view.jsp">删改景点</a></li>
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
                    <a class="nav-link" href="around_foods.jsp">
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
                        周边美食管理
                    </h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"></a></li>
                            <li class="breadcrumb-item active" aria-current="page">美食管理</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-lg-12 grid-margin stretch-card" style="padding: 0;">
                    <div class="card" >
                        <div class="card-body">
                            <h4 class="card-title">周边美食管理</h4>
                            <hr>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>图片</th>
                                    <th>项目名称</th>
                                    <th>门票价钱</th>
                                    <th>景点位置</th>
                                    <th>周边操作</th>
                                </tr>
                                </thead>
                                <tbody id="around_view_list">
                                    <!--动态加载-->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--增加弹框-->
<div class="container-scroller">
    <div id="cover_add"></div>
    <div class="row" id="alert_add">
        <div class="col-md-6 grid-margin stretch-card" style="margin: 0 auto">
            <div class="card">
                <div class="card-body" id="add_food">
                    <h3 class="card-title" >增加内容</h3>
                    <hr>
                    <!--动态加载-->
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //TODO  获取所有景点
    $(function () {
        $.ajax({
            type:'GET',
            url:'http://localhost:8080/tour/viewList',
            data:{
                flag:2
            },
            dataType:"json",
            success:function (data) {
                viewListLoad(data);//得到请求的页面数据  动态加载
            }
        });
    });
    //景点列表加载
    function viewListLoad(data) {
        for(let i=0;i<data.length;i++){
            let con =$(` <tr>
                              <td><img src="../../images/all/${'${data[i].viewImg}'}" class="view_img_main"></td>
                              <td>${'${data[i].viewName}'}</td>
                              <td>${'${data[i].viewPrice}'}元</td>
                              <td>${'${data[i].viewAddress}'}</td>
                              <td>
                                   <a href="foods_details.jsp?viewId=${'${data[i].viewId}'}"><button type="button" class="btn btn-inverse-info btn-fw">美食</button></a>
                                   <button type="button" class="btn btn-inverse-success btn-fw" onclick="showAddWindow(${'${data[i].viewId}'})">增加</button>
                              </td>
                         </tr>`);
            $('#around_view_list').append(con);
        }
    }
    //增加的弹框加载
    function foodAddLoad(data) {
        let con = $(`
                    <form class="forms-sample" action="http://localhost:8080/tour/foodAdd" method="post">
                        <input type="hidden" name="viewId" value="${'${data}'}">
                        <div class="form-group" style="width:49%;display:inline-block">
                            <label for="InputName">美食名字</label>
                            <input type="text" name="foodName" class="form-control" id="InputName" placeholder="name" value="">
                        </div>
                        <div class="form-group" style="width:50%;display:inline-block">
                            <label for="InputPrice">人均消费</label>
                            <input type="text" name="foodPrice" class="form-control" id="InputPrice" placeholder="price" value="">
                        </div>
                        <div class="form-group" style="width:49%;display:inline-block">
                            <label for="InputDis">距离景点</label>
                            <input type="text" name="foodDistance" class="form-control" id="InputDis" placeholder="distance" value="">
                        </div>

                        <div class="form-group" style="width:50%;display:inline-block">
                            <label for="InputRecommend">推荐指数</label>
                            <input type="text" name="foodRecommend" class="form-control" id="InputRecommend" placeholder="recommend" value="">
                        </div>
                        <div class="form-group" style="width:49%;display:inline-block">
                            <label for="InputRecommend">中文名字</label>
                            <input type="text" name="foodChineseName" class="form-control" id="InputRecommend" placeholder="chineseName" value="">
                        </div>
                        <div class="form-group" style="width:50%;display:inline-block">
                            <label for="InputRecommend">产地</label>
                            <input type="text" name="foodLocate" class="form-control" id="InputRecommend" placeholder="location" value="">
                        </div>
                        <div class="form-group" style="width:49%;display:inline-block">
                            <label for="InputRecommend">口味</label>
                            <input type="text" name="foodTaste" class="form-control" id="InputRecommend" placeholder="taste" value="">
                        </div>
                         <div class="form-group" style="width:50%;display:inline-block">
                            <label for="InputRecommend">起源</label>
                            <input type="text" name="foodOrigin" class="form-control" id="InputRecommend" placeholder="recommend" value="">
                        </div>
                           <div class="form-group">
                            <label for="exampleTextarea1">美食介绍：</label>
                            <textarea class="form-control"  value="" name="foodDesc" id="exampleTextarea1" rows="3" placeholder="please write about it ..."></textarea>
                         </div>
                        <div class="form-group" style="width:49%;display:inline-block">
                            <label for="InputAddress">地址</label>
                            <input type="text" name="foodAddress" class="form-control" id="InputAddress" placeholder="address" value="">
                        </div>

                        <div class="form-group" style="width:50%;display:inline-block">
                             <label>上传美食图片:</label>
                             <input type="file" name="foodImg" class="file-upload-default">
                             <div class="input-group col-xs-12" style="border: none;">
                             <input type="text"  value="" name="foodImg" class="form-control file-upload-info" disabled placeholder="Upload Image">
                             <span class="input-group-append">
                                   <button class="file-upload-browse btn btn-gradient-success btn-fw" type="button">上传</button>
                             </span>
                        </div>

                         </div>
                        <hr>
                        <div style="text-align: right;display: inline-block;">
                            <button type="submit"  class="btn_sub btn btn-inverse-success btn-fw" >确 定</button>
                        </div>
                    </form>
                    <div style="text-align: right;display: inline-block;position: absolute;right: 30px;bottom: 15px;">
                        <button class="btn_sub btn btn-inverse-info btn-fw"  onclick="closeAddWindow()">取消</button>
                    </div>`);
            $('#add_food').append(con);
            $('.file-upload-browse').on('click', function() {
                var file = $(this).parent().parent().parent().find('.file-upload-default');
                file.trigger('click');
            });
            $('.file-upload-default').on('change', function() {
                $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
            });
    }
    // 修改弹窗
    function showAddWindow(id) {
        console.log(id);
        foodAddLoad(id);//加载 增加框
        $('#alert_add').show();  //显示弹窗
        $('#cover_add').css('display','block'); //显示遮罩层
        $('#cover_add').css('height',document.body.clientHeight+'px'); //设置遮罩层的高度为当前页面高度
    }
    // 关闭修改弹窗
    function closeAddWindow() {
        $('#add_food form').remove();
        $('#alert_add').hide();  //隐藏弹窗
        $('#cover_add').css('display','none');   //显示遮罩层
    }
</script>
<script src="../../js/search.js"></script>
<script src="../../vendors/js/vendor.bundle.base.js"></script>
<script src="../../vendors/js/vendor.bundle.addons.js"></script>
</body>
</html>