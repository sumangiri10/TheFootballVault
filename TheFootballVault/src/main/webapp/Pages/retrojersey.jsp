<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Football Vault - Football Jerseys</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/products.css" />
</head>
<body>
	<jsp:include page="header.jsp">
	    <jsp:param name="activePage" value="retro" />
	  </jsp:include>
    <div class="page-header">
        <div class="container">
            <h1 class="page-title">RETRO JERSEYS</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > Retro Jerseys
            </div>
        </div>
    </div>

    <div class="product-filters">
        <div class="container">
            <div class="filter-options">
                <div class="filter-group">
                    <span class="filter-label">Filter:</span>
                    <div class="filter-buttons">
                        <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="filter-btn active">All</a>
                        <a href="${pageContext.request.contextPath}/Pages/1990s.jsp" class="filter-btn">1990s</a>
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
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="69"/>
                            <input type="hidden" name="quantity" value="1"/>
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
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="70"/>
                            <input type="hidden" name="quantity" value="1"/>
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
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="71"/>
                            <input type="hidden" name="quantity" value="1"/>
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
                        <img src="${pageContext.request.contextPath}/Images/retro/westham-retro.jpg" alt="West Ham United Retro 2000 Away">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">West Ham United Retro 2000 Away</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="72"/>
                            <input type="hidden" name="quantity" value="1"/>
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
                        <img src="${pageContext.request.contextPath}/Images/retro/united-retro.jpg" alt="Manchester United Retro 2010 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Manchester United Retro 2010 Away</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="73"/>
                            <input type="hidden" name="quantity" value="1"/>
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
                        <img src="${pageContext.request.contextPath}/Images/retro/santos-retro.jpg" alt="Santos Retro 2025 Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Santos Retro 2025 Home</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="74"/>
                            <input type="hidden" name="quantity" value="1"/>
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

                <!-- Product 7 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/real-retro.jpg" alt="Real Madrid Retro 2009 Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Real Madrid Retro 2009 Home</h3>
                        <div class="product-price">Rs. 1700</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="75"/>
                            <input type="hidden" name="quantity" value="1"/>
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

                <!-- Product 8 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/liverpool-retro.jpg" alt="Liverpool Retro 1995 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Liverpool Retro 1995 Away</h3>
                        <div class="product-price">Rs. 1650</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="76"/>
                            <input type="hidden" name="quantity" value="1"/>
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

                <!-- Product 9 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/chelsea-retro.jpg" alt="Chelsea Retro 2012 Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Chelsea Retro 2012 Home</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="77"/>
                            <input type="hidden" name="quantity" value="1"/>
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

                <!-- Product 10 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/intermilan-retro.jpg" alt="Inter Milan Retro 1998 Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Inter Milan Retro 1998 Home</h3>
                        <div class="product-price">Rs. 1650</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="78"/>
                            <input type="hidden" name="quantity" value="1"/>
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

                <!-- Product 11 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/sporting-retro.jpg" alt="Sporting Lisbon Retro 2001 Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Sporting Lisbon Retro 2001 Home</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="79"/>
                            <input type="hidden" name="quantity" value="1"/>
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

                <!-- Product 12 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/retro/arsenal-retro.jpg" alt="Arsenal Retro 1995 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Arsenal Retro 1995 Away</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="80"/>
                            <input type="hidden" name="quantity" value="1"/>
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
            </div>
        </div>
    </section>

    <div class="pagination">
        <div class="container">
            <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="page-link active">1</a>
            <a href="${pageContext.request.contextPath}/Pages/1990s.jsp" class="page-link">2</a>
            <a href="${pageContext.request.contextPath}/Pages/2000s.jsp" class="page-link">3</a>
            <a href="${pageContext.request.contextPath}/Pages/1990s.jsp" class="page-link next">Next</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>