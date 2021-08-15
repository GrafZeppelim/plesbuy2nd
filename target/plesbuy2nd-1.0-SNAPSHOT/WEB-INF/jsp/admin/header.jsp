<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Title</title>
</head>
<body>
<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="/resources/assets/img/sidebar-5.jpg">

        <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


        <div class="sidebar-wrapper">
            <div class="logo">
                <a  class="simple-text">
                    2ND SHOP ADMIN
                </a>
            </div>

            <ul class="nav">

                <li>
                    <a href="/admin/tablelist">
                        <i class="pe-7s-note2"></i>
                        <p>Sản Phẩm & Cung Ứng</p>
                    </a>
                </li>
                <li>
                    <a href="/admin/listproduct">
                        <i class="pe-7s-science"></i>
                        <p>Danh Mục Kho</p>
                    </a>
                </li>

                <li>
                    <a href="/admin/addsuppliers">
                        <i class="pe-7s-map-marker"></i>
                        <p>Thêm Nhà Cung Ứng</p>
                    </a>
                </li>

                <li>
                    <a href="/admin/addcategory">
                        <i class="pe-7s-user"></i>
                        <p>Thêm Danh Mục</p>
                    </a>
                </li>

                <li>
                    <a href="/admin/addproduct">
                        <i class="pe-7s-news-paper"></i>
                        <p>Thêm Sản Phẩm</p>
                    </a>
                </li>

                <li>
                    <a href="/admin/order">
                        <i class="pe-7s-bell"></i>
                        <p>Quản Lý Đơn Hàng</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">

                    </ul>

                    <ul class="nav navbar-nav navbar-right">

                        <li>
                            <a href="/logout">
                                <p>Log out</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>

</body>
</html>
