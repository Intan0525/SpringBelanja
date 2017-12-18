<%-- 
    Document   : produklist
    Created on : 15-Dec-2017, 14:51:56
    Author     : user
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/css/bootstrap.css"/>" rel="stylesheet">
        <style>
            table, th, td {
                border: 1px solid purple;
                border-collapse: collapse;
            }
            th, td {
                padding: 5px;
                text-align: left;
            }
        </style>
        <title>Intan's Shop</title>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        <h1>Daftar Produk</h1>
        <table style="width:100%">
            <c:forEach var="p" items="${produks}">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/produks/${p.id}">${p.namaProduk}</a></td>
                </tr>
            </c:forEach>
        </table>

        <div class="banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="banner_item align-items-center" style="background-image:url(resources/images/banner_1.jpg)">
                            <div class="banner_category">
                                <a href="categories.html">women's</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="banner_item align-items-center" style="background-image:url(resources/images/banner_2.jpg)">
                            <div class="banner_category">
                                <a href="categories.html">accessories's</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="banner_item align-items-center" style="background-image:url(resources/images/banner_3.jpg)">
                            <div class="banner_category">
                                <a href="categories.html">men's</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- New Arrivals -->

        <div class="new_arrivals">
            <div class="container">
                <div class="row">
                    <div class="col text-center">
                        <div class="section_title new_arrivals_title">
                            <h2>New Arrivals</h2>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col text-center">
                        <div class="new_arrivals_sorting">
                            <ul class="arrivals_grid_sorting clearfix button-group filters-button-group">
                                <li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked" data-filter="*">all</li>
                                <li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".women">women's</li>
                                <li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".accessories">accessories</li>
                                <li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".men">men's</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

                            <!-- Product 1 -->

                            <div class="product-item men">
                                <div class="product discount product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_1.png" alt="">
                                    </div>
                                    <div class="favorite favorite_left"></div>
                                    <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Black Mamba Jacket Deluxe (Black)</a></h6>
                                        <div class="product_price">$520.00<span>$590.00</span></div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 2 -->

                            <div class="product-item women">
                                <div class="product product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_2.png" alt="">
                                    </div>
                                    <div class="favorite"></div>
                                    <div class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center"><span>new</span></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Brown Bag California</a></h6>
                                        <div class="product_price">$610.00</div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 3 -->

                            <div class="product-item women">
                                <div class="product product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_3.png" alt="">
                                    </div>
                                    <div class="favorite"></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Sweater PPAP</a></h6>
                                        <div class="product_price">$120.00</div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 4 -->

                            <div class="product-item accessories">
                                <div class="product product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_4.png" alt="">
                                    </div>
                                    <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>
                                    <div class="favorite favorite_left"></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Tenis Sport Bag (Silver)</a></h6>
                                        <div class="product_price">$410.00</div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 5 -->

                            <div class="product-item women men">
                                <div class="product product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_5.png" alt="">
                                    </div>
                                    <div class="favorite"></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Vans Junggle Brown Limited Edition</a></h6>
                                        <div class="product_price">$180.00</div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 6 -->

                            <div class="product-item accessories">
                                <div class="product discount product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_6.png" alt="">
                                    </div>
                                    <div class="favorite favorite_left"></div>
                                    <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="#single.html">Sunglasses Beach Paradise</a></h6>
                                        <div class="product_price">$520.00<span>$590.00</span></div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 7 -->

                            <div class="product-item women">
                                <div class="product product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_7.png" alt="">
                                    </div>
                                    <div class="favorite"></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Sweater Fibbonanci Series</a></h6>
                                        <div class="product_price">$610.00</div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 8 -->

                            <div class="product-item accessories">
                                <div class="product product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_8.png" alt="">
                                    </div>
                                    <div class="favorite"></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Leopard Wallet Run Fast</a></h6>
                                        <div class="product_price">$120.00</div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 9 -->

                            <div class="product-item men">
                                <div class="product product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_9.png" alt="">
                                    </div>
                                    <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>
                                    <div class="favorite favorite_left"></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Brown Blouse Tree Branch</a></h6>
                                        <div class="product_price">$410.00</div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>

                            <!-- Product 10 -->

                            <div class="product-item men">
                                <div class="product product_filter">
                                    <div class="product_image">
                                        <img src="resources/images/product_10.png" alt="">
                                    </div>
                                    <div class="favorite"></div>
                                    <div class="product_info">
                                        <h6 class="product_name"><a href="single.html">Grey Long Shirt</a></h6>
                                        <div class="product_price">$180.00</div>
                                    </div>
                                </div>
                                <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>