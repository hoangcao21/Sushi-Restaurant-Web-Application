<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

    <head>
        <title>About my cakes</title>
        <link rel="stylesheet" type="text/css" href="/MariaCoffe/styles/main.css?version=1">
        <link rel="stylesheet" type="text/css" href="/MariaCoffe/styles/about-detail.css?version=1">
    </head>


    <body>
        <!-- Highest container -->
        <div id="main">

            <%@ include file="../includes/header.jsp" %>

            <!-- Navbar -->
            <div id="navbar" class="container">
                <div class="sans-serif">
                    <a href="/MariaCoffe/home">Home</a>
                </div>
                <div class="sans-serif">
                    <a href="/MariaCoffe/about" class="active">About my Cakes</a>
                </div>
                <div class="sans-serif">
                    <a href="/MariaCoffe/find">Find Maria's Cafe</a>
                </div>

            </div>

            <!-- Main content -->
            <div id="main-content" class="container">
                <!-- Left main content -->
                <div id="left-content">
                    <c:if test="${not empty product}">
                        <!-- Product container -->
                        <div>
                            <!--- There was a div here -->

                            <!-- Product box -->
                            <div class="product-box-column">
                                <!-- Product title -->
                                <div class="serif pd-left-product">
                                    <a href="#"><h2>${product.name}</h2></a>
                                </div>

                                <!-- Product date and price -->
                                <div class="pd-left-product">
                                    <!-- Product date -->
                                    <div class="sans-serif">
                                        <p class="date"><i>${product.date}</i></p>
                                    </div>

                                    <!-- Product price -->
                                    <div class="sans-serif">
                                        <fmt:setLocale value="en_US" />
                                        <fmt:formatNumber var="formattedPrice" value="${product.price}" type="currency" />
                                        <h4 class="money">Price: ${formattedPrice}</h4>
                                    </div>
                                </div>

                                <!-- Product content and image -->
                                <div class="product-box-row pd-left-product">

                                    <div class="sans-serif">
                                        <c:forTokens var="p" varStatus="status" items="${product.content}" delims="|">
                                            <c:if test="${status.first == true}">
                                                <div class="img-to-p">
                                                    <!-- Product image -->
                                                    <div>
                                                        <img src="/MariaCoffe/${product.image}">
                                                    </div>
                                                    <!-- Product content -->
                                                    <div>
                                                        <p>${p}</p>
                                                    </div>
                                                </div>
                                            </c:if>
                                            <c:if test="${status.first != true}">
                                                <!-- Product content -->
                                                <div>
                                                    <p>${p}</p>
                                                </div>
                                            </c:if>
                                        </c:forTokens>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </c:if>

                    <c:if test="${empty product}">
                        <h2 class="sans-serif message-not-exist">Sorry, the product does not exist :(</h2>
                    </c:if>

                    <%@ include file="../includes/footer.jsp" %>
                </div>

                <%@ include file="../includes/share-box.jsp" %>
            </div>


        </div>

    </body>

</html>