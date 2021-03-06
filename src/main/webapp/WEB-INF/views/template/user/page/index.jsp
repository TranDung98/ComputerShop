<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../components/header.jsp"></jsp:include>
<jsp:include page="../components/sidebar.jsp"></jsp:include>
<br>
<br>
<br>
<br>
<br>
<br>
<div id="homepage-1">


    <div class="ps-home-banner ps-home-banner--1" >
        <div class="ps-container" >
            <div class="ps-section__left" >
                <div class="ps-carousel--nav-inside owl-slider"
                     data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000"
                     data-owl-gap="0" data-owl-nav="true" data-owl-dots="true"
                     data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1"
                     data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000"
                     data-owl-mousedrag="on" data-owl-animate-in="fadeIn"
                     data-owl-animate-out="fadeOut">
                    <c:forEach items="${allProducts}" var="p">
                        <div class="ps-banner bg--cover"
                             data-background="${pageContext.request.contextPath}/product/display/0&${p.id}" style=" background-repeat:no-repeat; background-position: center center;" >
                            <a class="ps-banner__overlay" href="shop-default.html"></a>
                        </div>
<%--                        <div class="ps-banner bg--cover"--%>
<%--                        style="background-image: url(${pageContext.request.contextPath}/product/display/0&${p.id});background-repeat:no-repeat; background-position: center center;"--%>
<%--                        >--%>

<%--                        </div>--%>
                    </c:forEach>
                </div>
            </div>
                <div class="ps-section__right" >
                                    <a class="ps-collection" href="#">
                                        <img src="img/slider/home-1/promotion-2.jpg" alt="">
                                    </a>
                                    <a class="ps-collection" href="#">
                                        <img src="img/slider/home-1/promotion-2.jpg" alt="">
                                    </a>
                </div>

        </div>
    </div>
    <div class="ps-site-features">
        <div class="ps-container">
            <div class="ps-block--site-features">
                <div class="ps-block__item">
                    <div class="ps-block__left">
                        <i class="icon-rocket"></i>
                    </div>
                    <div class="ps-block__right">
                        <h4>Free Delivery</h4>
                        <p>For all oders over $99</p>
                    </div>
                </div>
                <div class="ps-block__item">
                    <div class="ps-block__left">
                        <i class="icon-sync"></i>
                    </div>
                    <div class="ps-block__right">
                        <h4>90 Days Return</h4>
                        <p>If goods have problems</p>
                    </div>
                </div>
                <div class="ps-block__item">
                    <div class="ps-block__left">
                        <i class="icon-credit-card"></i>
                    </div>
                    <div class="ps-block__right">
                        <h4>Secure Payment</h4>
                        <p>100% secure payment</p>
                    </div>
                </div>
                <div class="ps-block__item">
                    <div class="ps-block__left">
                        <i class="icon-bubbles"></i>
                    </div>
                    <div class="ps-block__right">
                        <h4>24/7 Support</h4>
                        <p>Dedicated support</p>
                    </div>
                </div>
                <div class="ps-block__item">
                    <div class="ps-block__left">
                        <i class="icon-gift"></i>
                    </div>
                    <div class="ps-block__right">
                        <h4>Gift Service</h4>
                        <p>Support gift service</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
<c:forEach items="${categories}" var="c">

        <div class="ps-product-list ps-clothings">
            <div class="ps-container">
                <div class="ps-section__header">
                    <h3>${c.name}</h3>
                    <ul class="ps-section__links">
                        <li><a href="${pageContext.servletContext.contextPath}/product?category=${c.id}">View All</a></li>
                    </ul>
                </div>

                <div class="ps-section__content">
                    <div class="ps-carousel--nav owl-slider" data-owl-auto="false"
                         data-owl-loop="false" data-owl-speed="10000" data-owl-gap="0"
                         data-owl-nav="true" data-owl-dots="true" data-owl-item="7"
                         data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3"
                         data-owl-item-lg="4" data-owl-item-xl="6" data-owl-duration="1000"
                         data-owl-mousedrag="on">
                        <c:forEach items="${productByCategory[c.name]}" var="p">
                        <div class="ps-product">
                            <div class="ps-product__thumbnail">
                                <a href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"><img
                                        src="${pageContext.request.contextPath}/product/display/0&${p.id}" alt="" style="width: 161px;height: 161px"></a>
<%--                                <div class="ps-product__badge">-16%</div>--%>
                                <ul class="ps-product__actions">
                                    <li class="toCart" value="${p.id}"><a  data-toggle="tooltip" data-placement="top"
                                           title="Add To Cart"><i class="icon-bag2"></i></a></li>
                                    <li><a href="#" data-placement="top" title="Quick View"
                                           data-toggle="modal" data-target="#product-quickview-${p.id}"><i
                                            class="icon-eye"></i></a></li>
                                    <li><a  data-toggle="tooltip" data-placement="top"
                                           title="Add to Whishlist"  onclick="addToWishList(${p.id})"><i class="icon-heart"></i></a></li>
                                </ul>
                            </div>
                            <div class="ps-product__container">
                                <a class="ps-product__vendor" href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">Angry Nerds</a>
                                <div class="ps-product__content">
                                    <a class="ps-product__title" href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span>01</span>
                                    </div>
                                    <p class="ps-product__price sale">
                                        $<fmt:formatNumber type="number" value="${p.price}"/>

                                    </p>
                                </div>
                                <div class="ps-product__content hover">
                                    <a class="ps-product__title" href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
                                    <p class="ps-product__price sale">
                                        $<fmt:formatNumber type="number" value="${p.price}"/>
                                    </p>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </div>

</c:forEach>


</div>
<jsp:include page="../components/footer.jsp"></jsp:include>
<script>
    var countWish = document.querySelector('#countWish');
    var cookie = document.cookie;
    var arr_product;
    window.onload = initData();
    function initData() {
        cookies();
        if (arr_product != null) {
            if (arr_product[0] != "") {
                countWish.innerHTML = arr_product.length;
            } else {
                countWish.innerHTML = 0;
            }
        }
    }

    function cookies() {
        cookie = document.cookie;
        if (cookie != null) {
            matchs = cookie.match("wishlist=([^;]*)");
            if (matchs != null) {
                arr_product = matchs[1].split('a');
            }
        }
    }
    /* function addToWishList(id) {
        const data = null;
        const xhr = new XMLHttpRequest();
        xhr.addEventListener("readystatechange", function() {
            if (this.readyState === this.DONE) {
                if (this.responseText === "successful") {
                    alert("You have successfully added!");
                } else if (this.responseText === "failed") {
                    alert("You can only add 1 time!");
                }
                cookies();
                initData();
            }
        });
        xhr
                .open(
                        "GET",
                        "${pageContext.servletContext.contextPath}/api/wish-list/addProductToWishList?id_product="
									+ id);
			xhr.setRequestHeader('Content-type', 'application/json');
			xhr.send(data);
		} */
</script>
<script>
    // @author Lam Cong Hau
    var countWish = document.querySelector('#countWish');
    var cookie = document.cookie;
    var arr_product;
    window.onload = initData();
    function initData() {
        cookies();
        if (arr_product != null) {
            if (arr_product[0] != "") {
                countWish.innerHTML = arr_product.length;
            }else{
                countWish.innerHTML = 0;
            }
        }
    }

    function cookies() {
        cookie = document.cookie;
        if (cookie != null) {
            matchs = cookie.match("wishlist=([^;]*)");
            if (matchs != null) {
                arr_product = matchs[1].split('a');
            }
        }
    }
    function addToWishList(id) {
        const data = null;
        const xhr = new XMLHttpRequest();
        xhr.addEventListener("readystatechange", function() {
            if (this.readyState === this.DONE) {
                if(this.responseText === "successful"){
                    alert("You have successfully added!");
                }else if(this.responseText === "failed"){
                    alert("You can only add 1 time!");
                }
                cookies();
                initData();
            }
        });
        xhr
            .open(
                "GET",
                "${pageContext.servletContext.contextPath}/api/wish-list/addProductToWishList?id_product="
                + id);
        xhr.setRequestHeader('Content-type', 'application/json');
        xhr.send(data);
    }

    function addProductToViewList(id) {
        const data = null;
        const xhr = new XMLHttpRequest();
        xhr.addEventListener("readystatechange", function() {
        });
        xhr
            .open(
                "GET",
                "${pageContext.servletContext.contextPath}/api/wish-list/addProductToViewList?id_product="
                + id);
        xhr.setRequestHeader('Content-type', 'application/json');
        xhr.send(data);
    }
</script>
</body>

