<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/png" href="/resources/assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Light Bootstrap Dashboard by Creative Tim</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>


    <!-- Bootstrap core CSS     -->
    <link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Animation library for notifications   -->
    <link href="/resources/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="/resources/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/resources/assets/css/demo.css" rel="stylesheet"/>


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="/resources/assets/css/pe-icon-7-stroke.css" rel="stylesheet"/>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Danh Sách Sản Phẩm Có Trong Cửa Hàng</h4>
                        <%--<p class="category">Here is a subtitle for this table</p>--%>
                    </div>
                    <div class="content table-responsive table-full-width">
                        <table class="table table-hover table-striped">
                            <thead>
                            <th>Name</th>
                            <th>Quantity</th>
                            <th>UnitPrice</th>
                            <th>Discount</th>
                            <th>Category</th>
                            <th>Supplier</th>
                            <th>Good</th>
                            <th>Edit</th>
                            <th>Delete</th>
                            </thead>
                            <tbody>
                            <c:forEach items="${productList}" var="productList">
                                <tr>
                                    <td>${productList.name}</td>
                                    <td>${productList.quantity}</td>
                                    <td>${productList.unitPrice}</td>
                                    <td>${productList.discount}</td>
                                    <td>${productList.category.name}</td>
                                    <td><img src="/resources/uploads/${productList.category.supplier.logo}" width="100"
                                             height="50"/></td>
                                    <td><img src="/resources/uploads/${productList.image}" width="50"
                                             height="100"/></td>
                                    <td><a href="/admin/editproduct?id=${productList.id}"><img src="/resources/assets/img/icon/edit.svg " height="20" width="20" ></a></td>
                                        <%--<a href="/admin/editproduct?id=${productList.id}"></a></td>--%>

                                    <td><a href="/deletepro/${productList.id}" onclick="return confirm('Deleting the Product will remove all associated Order. Are you sure ?')"><img src="/resources/assets/img/icon/delete.svg " height="20"
                                             width="20"></a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
<!--   Core JS Files   -->
<script src="/resources/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="/resources/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="/resources/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="/resources/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="/resources/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="/resources/assets/js/demo.js"></script>

<script type="text/javascript">
    $(document).ready(function () {

        demo.initChartist();

        $.notify({
            icon: 'pe-7s-gift',
            message: "${message}"

        }, {
            type: 'info',
            timer: 4000
        });

    });
</script>

</body>
</html>
