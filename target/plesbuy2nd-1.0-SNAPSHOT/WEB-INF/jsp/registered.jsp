
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>2nd Shop</title>
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
    <script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>
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
        });
    </script>
    <!-- start-smoth-scrolling -->
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Register Page</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- register -->
<div class="register">
    <div class="container">
        <h2><spring:message code="REGISTER" text="default text"/> </h2>
        <div class="login-form-grids">
            <h5><spring:message code="Profile" text="default text"/></h5>
            <form:form  id="register" method="post" modelAttribute="customer">
                <form:input path="fullname" action="/registered" placeholder="Full name" required="true"></form:input>
                <label></label>
                <input accept="image/*" name="file" type="file" id="files" placeholder="Avata" class="form-control" required="true">
                <img id="image" width="100" height="100"/>
                <script>
                    document.getElementById('files').onchange = function () {
                        var src = URL.createObjectURL(this.files[0])
                        document.getElementById('image').src = src
                    }
                </script>
                <h6><spring:message code="Login" text="default text"/></h6>

                <form:input path="id" id="username" placeholder="User name" required="true" pattern="^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$" title="Username must be written with no accents from 8-20 characters, must not be repeated or marked with '_' or '.' at the end or beginning of the username eg: Example_23, Example.32"></form:input>
                <div id="error"></div>
                <form:input type = "password" id = "password" path="password" placeholder="Password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,32}$" title="Your password must be between 8-32 characters including at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 special character" required="true"></form:input>

                <input type = "password" id="repassword" placeholder="Re-Password"  title="Your password must be between 8-32 characters including at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 special character" required="true"></input>
                <div id="error-password"></div>
                <script type="text/javascript">
                    $('input#repassword').on('input',function(e){
                        console.log($(this).val());
                        console.log( $('input#password').val());
                        console.log($(this).val() != $('input#password').val())
                        if($(this).val() != $('input#password').val()) {
                            $('#error-password').empty();
                            $('#error-password').append("<font color='red' id ='error-text'><p> Confirm Password not match!</p> </font>");
                            $("#btn-search").prop("disabled", true);

                        }else{
                            $('#error-password').empty();
                            $("#btn-search").prop("disabled", false);
                        }
                    });
                </script>

                <form:input  type = "email" path="email" placeholder="Email" pattern="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$" title="Please enter gmail in the format Example@gmail.com" required="true"></form:input>
                <div class="register-check-box">
                    <div class="check">
                        <label class="checkbox"><input type="checkbox" name="checkbox" required="true" title="You need to agree to the terms and service"><i> </i>I accept the <a href="/">terms and conditions</a></label>
                    </div>
                </div>
                <input type="submit" id="btn-search" value="Register">
            </form:form>

        </div>
        <div class="register-home">
            <a href="/">Home</a>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>



<!-- Bootstrap Core JavaScript -->
<script src="/resources/js/bootstrap.min.js"></script>

<!-- top-header and slider -->
<!-- here stars scrolling icon -->

<%--<script type="text/javascript">--%>
<%--    $(document).ready(function () {--%>
<%--        /*--%>
<%--            var defaults = {--%>
<%--            containerID: 'toTop', // fading element id--%>
<%--            containerHoverID: 'toTopHover', // fading element hover id--%>
<%--            scrollSpeed: 1200,--%>
<%--            easingType: 'linear'--%>
<%--            };--%>
<%--        */--%>

<%--        $().UItoTop({easingType: 'easeOutQuart'});--%>

<%--    });--%>
<%--</script>--%>
<!-- //here ends scrolling icon -->
<script src="/resources/js/minicart.min.js"></script>
<script type="text/javascript">
    // Mini Cart
    paypal.minicart.render({
        action: '#'
    });

    if (~window.location.search.indexOf('reset=true')) {
        paypal.minicart.reset();
    }
</script>
<script type="text/javascript">
    $(document).ready(function () {

        $("#username").focusout(function (event) {

            console.log('Submit Form');

            // event.preventDefault();
            fire_ajax_submit();

        });

    });

    function fire_ajax_submit(event) {
        console.log('In Requesting');
        var user = {}
        user["username"] = $("#username").val();



        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/check",
            data: JSON.stringify(user),
            cache: false,
            timeout: 600000,
            success: function (data) {
                console.log('SUCCESS');
                if(data == "ALREADY") {
                    $('#error').empty();
                    $('#error').append("<font color='red' id ='error-text'><p> Username already exits!</p> </font>");
                    $("#btn-search").prop("disabled", true);

                }else{
                    $('#error').empty();
                    $("#btn-search").prop("disabled", false);
                }

            },
            error: function (e) {
                console.log(e.responseText);


            }
        });

    }
</script>
<!-- main slider-banner -->
<script src="/resources/js/skdslider.min.js"></script>
<link href="/resources/css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('#demo1').skdslider({
            'delay': 5000,
            'animationSpeed': 2000,
            'showNextPrev': true,
            'showPlayButton': true,
            'autoSlide': true,
            'animationType': 'fading'
        });

        jQuery('#responsive').change(function () {
            $('#responsive_wrapper').width(jQuery(this).val());
        });

    });
</script>
<!-- //main slider-banner -->
</body>
</html>
