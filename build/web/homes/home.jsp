<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="/SushiRestaurant/styles/main.css?version=1">
        <link rel="stylesheet" type="text/css" href="/SushiRestaurant/styles/home.css?version=1">
    </head>


    <body>
        <!-- Highest container -->
        <div id="main">

            <!-- Header -->
            <%@ include file="../includes/header.jsp" %>

            <!-- Navbar -->
            <div id="navbar" class="container">
                <div class="sans-serif">
                    <a href="/SushiRestaurant/home" class="active">Home</a>
                </div>
                <div class="sans-serif">
                    <a href="/SushiRestaurant/menu">Menu and Price list</a>
                </div>
                <div class="sans-serif">
                    <a href="/SushiRestaurant/find">Find us</a>
                </div>

            </div>

            <!-- Main content -->
            <div id="main-content" class="container">
                <!-- Left main content -->
                <div>
                    <!-- Introduction image -->
                    <div id="intro" class="bd-bottom">
                        <img src="/SushiRestaurant/images/${section01.image}">
                    </div>

                    <!-- Introduction section -->
                    <div id="intro-section">

                            <div id="intro-title">
                                <h3>${section02.name}</h3>
                            </div>
                            <div id="intro-content">
                                <div id="intro-left-content">
                                    <img src="/SushiRestaurant/images/${section02.image}">
                                </div>
                                <div id="intro-right-content">
                                    <p> ${section02.content} </p>
                                </div>
                            </div>

                    </div>

                    <!-- Footer -->
                    <%@ include file="../includes/footer.jsp" %>
                </div>

                <!-- Right main content for share page -->
                <%@ include file="../includes/share-box.jsp" %>
            </div>


        </div>

    </body>

</html>