<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

    <head>
        <title>Menu and Price list</title>
        <link rel="stylesheet" type="text/css" href="/SushiRestaurant/styles/main.css?version=1">
        <link rel="stylesheet" type="text/css" href="/SushiRestaurant/styles/menu.css?version=2">
    </head>


    <body>
        <!-- Begin JavaBean -->
        <jsp:useBean id="menuPaging" class="paging.MenuPaging" scope="request" />

        <c:if test="${not empty param.page}">
            <jsp:setProperty name="menuPaging" property="page" param="page" />
        </c:if>

        <!-- End JavaBean -->

        <!-- Highest container -->
        <div id="main">

            <%@ include file="../includes/header.jsp" %>

            <!-- Navbar -->
            <div id="navbar" class="container">
                <div class="sans-serif">
                    <a href="/SushiRestaurant/home">Home</a>
                </div>
                <div class="sans-serif">
                    <a href="/SushiRestaurant/menu" class="active">Menu and Price list</a>
                </div>
                <div class="sans-serif">
                    <a href="/SushiRestaurant/find">Find us</a>
                </div>

            </div>

            <!-- Main content -->
            <div id="main-content" class="container">
                <!-- Left main content -->
                <div id="left-content">
                    <h2>Menu and Price list</h2>
                    <c:if test="${not empty menuPaging.menus}">
                        <div>
                            <c:forEach var="menu" items="${menuPaging.menus}">
                                <!-- Menu box -->
                                <div class="menu-box bd-bottom">
                                    <!-- Menu sub box -->
                                    <div>
                                        <table>
                                            <tr>
                                                <th class="tr-left sans-serif">Menu ${menu.id}</th>
                                                <th class="tr-right sans-serif">Price</th>
                                            </tr>

                                            <tr>
                                                <td class="tr-left sans-serif">${menu.productName}</td>
                                                <fmt:setLocale value="en_GB"/>
                                                <fmt:formatNumber var="p" value="${menu.price}" type="currency"/>
                                                <td class="tr-right sans-serif"> ${p}</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- Menu content -->
                                    <div>
                                        <p class="sans-serif">${menu.content}</p>
                                    </div>
                                </div>
                            </c:forEach>

                            <p class="sans-serif">Page:
                                <c:forEach begin="1" end="${menuPaging.numPage}" varStatus="status">
                                    <c:if test="${status.last == true}">
                                        <span>
                                            <a href="/SushiRestaurant/menus/menu.jsp?page=${status.index}">${status.index}</a>
                                        </span>
                                    </c:if>
                                    <c:if test="${status.last != true}">
                                        <span>
                                            <a href="/SushiRestaurant/menus/menu.jsp?page=${status.index}">${status.index}</a>,
                                        </span>
                                    </c:if>

                                </c:forEach>
                            </p>
                        </div>
                    </c:if>

                    <c:if test="${empty menuPaging.menus}">
                        <h2 class="sans-serif">Sorry! We haven't had any menu yet :(</h2>
                    </c:if>

                    <%@ include file="../includes/footer.jsp" %>
                </div>

                <%@ include file="../includes/share-box.jsp" %>
            </div>


        </div>

    </body>

</html>