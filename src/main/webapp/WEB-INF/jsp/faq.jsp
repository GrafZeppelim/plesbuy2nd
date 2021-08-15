
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FAQs</title>
    <script src="/resources/js/jquery.3.1.1.min.js"></script>
    <script src="/resources/js/jquery.twbsPagination.min.js"/>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <!-- //for-mobile-apps -->
    <link href="/resources/css/bootstrap1.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- font-awesome icons -->
    <link href="/resources/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <%--<script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>--%>
    <!-- //js -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="/resources/js/move-top.js"></script>
    <script type="text/javascript" src="/resources/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });

            $('#pagination').twbsPagination({
                totalPages: parseInt(${totalPages}),
                visiblePages: parseInt(${visiblePages}),
                initiateStartPageClick: false,
                startPage: parseInt(${startPage}),
                onPageClick: function (event, page) {
                    window.location.href = "?page=" + page;
                }
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <jsp:include page="header.jsp"></jsp:include>
</head>
<body>



<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">FAQs</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<div class="login">
    <h2>FAQs</h2>
</div>
<!-- FAQs -->
<div class="container" id="main-content">
    <h1>Câu Hỏi Thường Gặp</h1><br>
    <div class="item-wrapper">
        <div class="question">
            Thời gian tôi có thể nhận được hàng trong bao lâu ?
        </div>
        <div class="answer">
            Thường thì bạn sẽ nhận được sản phẩm từ 1-2 ngày kể từ khi đặt hàng sản phẩm. Nếu bạn ở nội ô thành phố cần thơ bạn có thể sẽ được giao hàng trong 2 giờ.
        </div>
    </div>
    <div class="item-wrapper">
        <div class="question">
            Làm cách nào giúp quần áo mới mua luôn mới?
        </div>
        <div class="answer">
            1. Cho quần áo vào tủ lạnh. 2. Ngâm nước trước khi giặt bằng bột giăt. 3. Tránh phơi quần áo trực tiếp dưới ánh nắng mặt trời.
        </div>
    </div>
    <div class="item-wrapper">
        <div class="question">
            Quần áo mới mua về nên làm gì để quần áo luôn bền đẹp?
        </div>
        <div class="answer">
            Lần đầu tiên giặt áo, bạn tuyệt đối không được giặt bằng xà phòng mà hãy ngâm áo vào nước lã khoảng 2 tiếng. Nhỏ thêm vào chậu ngâm giọt dấm trắng hoặc rắc vài hạt muối hòa tan. Việc làm này giúp áo không bị phai màu.
        </div>
    </div>
    <h1></h1>
    <div></div>
</div>
</div>
</div>

<style type="text/css">
    .item-wrapper {
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    .question {
        background-color: #f5f5f5;
        padding: 10px 15px;
    }
    .answer {
        padding: 15px;
    }
</style>
<!-- FAQs -->

<jsp:include page="footer.jsp"></jsp:include>



<script src="js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.min.js"></script>
<script>
    // Mini Cart
    paypal.minicart.render({
        action: '#'
    });

    if (~window.location.search.indexOf('reset=true')) {
        paypal.minicart.reset();
    }
</script>
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});

        jQuery('#responsive').change(function(){
            $('#responsive_wrapper').width(jQuery(this).val());
        });

    });
</script>
<!-- //main slider-banner -->


</body>
</html>
