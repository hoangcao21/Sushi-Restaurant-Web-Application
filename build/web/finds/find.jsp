<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

    <head>
        <title>Find Maria's Cafe</title>
        <link rel="stylesheet" type="text/css" href="/SushiRestaurant/styles/main.css?version=1">
        <link rel="stylesheet" type="text/css" href="/SushiRestaurant/styles/find.css?version=1">
    </head>


    <body>
        <!-- Highest container -->
        <div id="main">

            <%@ include file="../includes/header.jsp" %>

            <!-- Navbar -->
            <div id="navbar" class="container">
                <div class="sans-serif">
                    <a href="/SushiRestaurant/home">Home</a>
                </div>
                <div class="sans-serif">
                    <a href="/SushiRestaurant/menu">Menu and Price list</a>
                </div>
                <div class="sans-serif">
                    <a href="/SushiRestaurant/find" class="active">Find us</a>
                </div>

            </div>

            <!-- Main content -->
            <div id="main-content" class="container">
                <!-- Left main content -->
                <div id="left-content">
                    <!-- Address -->
                    <div>
                        <h2 class="serif">Find us</h2>
                    </div>

                    <div id="address-box" class="bd-bottom">
                        <div id="address-box-child-mr">

                            <div>
                                <h4 class="serif">${section01.name}</h4>
                            </div>

                            <div>
                                <c:forTokens var="content" items="${section01.content}" delims="|">
                                    <p class="sans-serif datax">
                                        ${content}
                                    </p>
                                </c:forTokens>
                            </div>

                        </div>

                        <div>

                            <div>
                                <h4 class="serif">${section02.name}</h4>
                            </div>

                            <div>
                                <c:forTokens var="content" items="${section02.content}" delims="|">
                                    <p class="sans-serif">
                                        ${content}
                                    </p>
                                </c:forTokens>
                            </div>

                        </div>
                    </div>

                    <!-- Google Map -->
                    <div>
                        <img src="/SushiRestaurant/images/${section03.image}">
                    </div>

                    <%@ include file="../includes/footer.jsp" %>
                </div>

                <%@ include file="../includes/share-box.jsp" %>
            </div>


        </div>

    </body>

</html>