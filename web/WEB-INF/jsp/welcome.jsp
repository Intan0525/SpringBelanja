<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Intan's Shop</title>
        <!--
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
        -->

         
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        <div class="main_slider" style="background-image: url(resources/images/slider_1.jpg)">
                        <!--<img src="<c:url value="/resources/images/slider_1.jpg"/>"/>-->
            <div class="container fill_height">
                <div class="row align-items-center fill_height">
                    <div class="col">
                        <div class="main_slider_content">
                            <h6>Spring / Summer Collection 2017</h6>
                            <h1>Get up to 30% Off New Arrivals</h1>
                            <div class="red_button shop_now_button"><a href="#">shop now</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <div>
                
            </div>


        <div class="container">
            <h1>${msg}</h1> 
            <p>
                <a href="${pageContext.request.contextPath}/register">Please Register</a>
            </p>
            <c:if test="${empty sessionScope.user}">
                <p>
                    <a href="${pageContext.request.contextPath}/login">Please Login</a>
                </p>
            </c:if>

        </div>




    </body>
</html>
