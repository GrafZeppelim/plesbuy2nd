
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

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
            <li class="active">About Us</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<div class="login">
    <h2>About Us</h2>
</div>
<!-- About Us -->
<section class="u-clearfix u-section-1" id="carousel_06b2">
    <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
            <div class="u-gutter-0 u-layout">
                <div class="u-layout-col">
                    <div class="u-align-center u-container-style u-layout-cell u-size-20 u-layout-cell-1">
                        <div class="u-container-layout u-container-layout-1">
                            <h5 class="u-text u-text-1"><b>XIN
                                CHÂN THÀNH CẢM ƠN SỰ LỰA CHỌN CỦA BẠN DÀNH CHO 2ND .PLESBUY&nbsp;</b>
                            </h5>
                            <h4><p class="u-custom-font u-heading-font u-text u-text-black u-text-2"> 2ND .PLESBUY ra đời nhằm mục đích
                                giúp các tính đồ thời trang tìm kiếm chia sẽ những món đồ thời trang từ các
                                thương hiệu nổi tiếng dựa trên hình thức give away độ cond cao từ 90-100%.&nbsp;<br>Chúng ta yêu thích những món đồ hiệu
                                nhưng lại ngán ngẩm với cái giá đắc đỏ của nó?
                                Chúng ta muốn tiết kiệm nhưng vẫm muốn
                                thỏa mãn đam mê thời trang của mình?&nbsp;<br>Thì ở 2ND.PLESBUY là lựa chọn tuyệt vời
                                dành cho bạn .
                                &nbsp;&nbsp;<br>Hãy chọn cho mình một phong cách thời
                                trang đúng với cá tính của bạn!
                            </p></h4>
                        </div>
                    </div>

                    <div class="u-align-center u-container-style u-layout-cell u-size-20 u-layout-cell-2">
                        <div class="u-container-layout u-container-layout-2">
                            <img class="u-image u-image-default u-image-1" src="/resources/images/about.jpg" alt="" data-image-width="600" data-image-height="400">
                        </div>
                    </div>
                    <div class="u-align-center u-container-style u-layout-cell u-size-20 u-layout-cell-3">
                        <div class="u-container-layout u-container-layout-3">
                            <h5 class="u-text u-text-3"><b>NHỮNG ĐIỀU LƯU Ý KHI BẠN CHỌN SẢN PHẨM
                                SECONHAND</b>
                            </h5>
                            <h4><p class="u-custom-font u-heading-font u-text u-text-4"><span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
	c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
	c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg><img></span>&nbsp;Hàng
                                khi đã bán vui lòng không đổi trả ( trừ trường hợp không đúng mẫu , không đúng
                                size và bị lỗi quý khách vui lòng liên hệ hotline để được giải quyết.)<br>&nbsp;<span class="u-icon u-icon-2"><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
	c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
	c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg><img></span>&nbsp;Qúy khách vui lòng chắc chắn nhận hàng trước khi đặt hàng .<br>&nbsp;<span class="u-icon u-icon-3"><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
	c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
	c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg><img></span>&nbsp;Đối với hàng order và custom quý khách vui lòng thanh toán trước / cọc .<br>&nbsp;<span class="u-icon u-icon-4"><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
	c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
	c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg><img></span>&nbsp;
                                Cảm ơn quý khách đã tin tưởng và ủng
                                hộ !&nbsp;&nbsp;<span class="u-icon u-icon-5"><svg class="u-svg-content" viewBox="0 0 50 50" x="0px" y="0px" style="width: 1em; height: 1em;"><path style="fill:currentColor;" d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543
	c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503
	c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z"></path></svg><img></span> &nbsp;<br>
                            </p></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<style type="text/css">
    .u-section-1 .u-sheet-1 {
        min-height: 894px;
    }

    .u-section-1 .u-layout-wrap-1 {
        width: 1140px;
        margin: 0 auto;
    }

    .u-section-1 .u-layout-cell-1 {
        min-height: 303px;
    }

    .u-section-1 .u-container-layout-1 {
        padding: 30px 100px;
    }

    .u-section-1 .u-text-1 {
        font-size: 2.25rem;
        font-weight: 700;
        margin: 12px 0 0;
    }

    .u-section-1 .u-text-2 {
        font-size: 0.875rem;
        line-height: 2;
        margin: 20px 0 0;
    }

    .u-section-1 .u-layout-cell-2 {
        min-height: 447px;
    }

    .u-section-1 .u-container-layout-2 {
        padding: 30px;
    }

    .u-section-1 .u-image-1 {
        width: 635px;
        height: 387px;
        object-position: 50% 0%;
        display: block;
        margin-left: auto;
        margin-right: auto;
    }

    .u-section-1 .u-layout-cell-3 {
        min-height: 303px;
    }

    .u-section-1 .u-container-layout-3 {
        padding: 30px 100px;
    }

    .u-section-1 .u-text-3 {
        font-size: 2.25rem;
        font-weight: 700;
        margin: 12px 0 0;
    }

    .u-section-1 .u-text-4 {
        font-size: 0.875rem;
        line-height: 2;
        margin: 20px 0 0;
    }

    .u-section-1 .u-icon-1 {
        color: rgb(215, 90, 74) !important;
    }

    .u-section-1 .u-icon-2 {
        color: rgb(215, 90, 74) !important;
    }

    .u-section-1 .u-icon-3 {
        color: rgb(215, 90, 74) !important;
    }

    .u-section-1 .u-icon-4 {
        color: rgb(215, 90, 74) !important;
    }

    .u-section-1 .u-icon-5 {
        color: rgb(215, 90, 74) !important;
    }
    @media (max-width: 1199px) {
        .u-section-1 .u-sheet-1 {
            min-height: 710px;
        }

        .u-section-1 .u-layout-wrap-1 {
            width: 940px;
        }

        .u-section-1 .u-layout-cell-1 {
            min-height: 250px;
        }

        .u-section-1 .u-layout-cell-2 {
            min-height: 369px;
        }

        .u-section-1 .u-layout-cell-3 {
            min-height: 250px;
        }
    }

    @media (max-width: 991px) {
        .u-section-1 .u-sheet-1 {
            min-height: 324px;
        }

        .u-section-1 .u-layout-wrap-1 {
            width: 720px;
        }

        .u-section-1 .u-layout-cell-1 {
            min-height: 100px;
        }

        .u-section-1 .u-container-layout-1 {
            padding-left: 30px;
            padding-right: 30px;
        }

        .u-section-1 .u-layout-cell-2 {
            min-height: 283px;
        }

        .u-section-1 .u-image-1 {
            margin-right: 25px;
        }

        .u-section-1 .u-layout-cell-3 {
            min-height: 100px;
        }

        .u-section-1 .u-container-layout-3 {
            padding-left: 30px;
            padding-right: 30px;
        }
    }

    @media (max-width: 767px) {
        .u-section-1 .u-sheet-1 {
            min-height: 253px;
        }

        .u-section-1 .u-layout-wrap-1 {
            width: 540px;
        }

        .u-section-1 .u-container-layout-1 {
            padding-left: 10px;
            padding-right: 10px;
        }

        .u-section-1 .u-layout-cell-2 {
            min-height: 212px;
        }

        .u-section-1 .u-container-layout-2 {
            padding-left: 10px;
            padding-right: 10px;
        }

        .u-section-1 .u-image-1 {
            width: 520px;
            height: 317px;
            margin-right: 0;
        }

        .u-section-1 .u-container-layout-3 {
            padding-left: 10px;
            padding-right: 10px;
        }
    }

    @media (max-width: 575px) {
        .u-section-1 .u-sheet-1 {
            min-height: 174px;
        }

        .u-section-1 .u-layout-wrap-1 {
            width: 340px;
        }

        .u-section-1 .u-layout-cell-2 {
            min-height: 133px;
        }

        .u-section-1 .u-image-1 {
            width: 320px;
            height: 195px;
        }
    }
</style>
<!-- About US -->

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
