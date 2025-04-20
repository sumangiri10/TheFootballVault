<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Football Vault - 1990s Jerseys</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/products.css" />
</head>
<body>
 <%@ include file="header.jsp" %>
    <div class="page-header">
        <div class="container">
            <h1 class="page-title">RETRO JERSEYS</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> >
                <a href="${pageContext.request.contextPath}/Pages/retrojersey.jsp">Retro Jerseys</a> 1990s Jerseys
            </div>
        </div>
    </div>

    <div class="product-filters">
        <div class="container">
            <div class="filter-options">
                <div class="filter-group">
                    <span class="filter-label">Filter:</span>
                    <div class="filter-buttons">
                        <a href="${pageContext.request.contextPath}/Pages/retrojersey.jsp" class="filter-btn">All</a>
                        <a href="${pageContext.request.contextPath}/Pages/1990s.jsp" class="filter-btn active">1990s</a>
                        <a href="${pageContext.request.contextPath}/Pages/2000s.jsp" class="filter-btn">2000s</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="products-section">
        <div class="container">
            <div class="products-grid">
                <!-- Product 1 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/tottenham-retro.jpg" alt="Tottenham Hotspur Retro 1991 Home">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Tottenham Hotspur Retro 1991 Home</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                    <option value="2XL">2XL</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/city-retro.jpg" alt="Manchester City Retro 1990 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Manchester City Retro 1990 Away</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="2"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                    <option value="2XL">2XL</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/barca-retro.jpg" alt="Barcelona Retro 1999 Home">
                        <div class="product-tag">Popular</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Barcelona Retro 1999 Home</h3>
                        <div class="product-price">Rs. 1800</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="3"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                    <option value="2XL">2XL</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/liverpool-retro.jpg" alt="Liverpool Retro 1995 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Liverpool Retro 1995 Away</h3>
                        <div class="product-price">Rs. 1650</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="8"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                    <option value="2XL">2XL</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 5 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/intermilan-retro.jpg" alt="Inter Milan Retro 1998 Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Inter Milan Retro 1998 Home</h3>
                        <div class="product-price">Rs. 1650</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="10"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                    <option value="2XL">2XL</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 6 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/arsenal-retro.jpg" alt="Arsenal Retro 1995 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Arsenal Retro 1995 Away</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="12"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                    <option value="2XL">2XL</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>
    </section>

    <div class="pagination">
        <div class="container">
            <a href="${pageContext.request.contextPath}/Pages/retrojersey.jsp" class="page-link">1</a>
            <a href="${pageContext.request.contextPath}/Pages/1990s.jsp" class="page-link active">2</a>
            <a href="${pageContext.request.contextPath}/Pages/2000s.jsp" class="page-link">3</a>
            <a href="${pageContext.request.contextPath}/Pages/2000s.jsp" class="page-link next">Next</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
