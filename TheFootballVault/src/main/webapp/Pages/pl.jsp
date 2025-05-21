<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Football Vault - Premier League</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/products.css" />
</head>
<body>
 <%@ include file="header.jsp" %>
 
    <div class="page-header">
        <div class="container">
            <h1 class="page-title">Premier League Jerseys</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> >
                <a href="${pageContext.request.contextPath}/Pages/football.jsp">Football Jerseys</a> > Premier League Jerseys
            </div>
        </div>
    </div>

    <div class="product-filters">
        <div class="container">
            <div class="filter-options">
                <div class="filter-group">
                    <span class="filter-label">League:</span>
                    <div class="filter-buttons">
                        <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="filter-btn">All</a>
                        <a href="${pageContext.request.contextPath}/Pages/pl.jsp" class="filter-btn active">Premier League</a>
                        <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="filter-btn">La Liga</a>
                        <a href="${pageContext.request.contextPath}/Pages/seria.jsp" class="filter-btn">Serie A</a>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/city-home.jpg" alt="Manchester City Home Jersey 2024/25">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Manchester City Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="21"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/arsenal-home.jpg" alt="Arsenal Home Jersey 2024/25">
                        <div class="product-tag">Popular</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Arsenal Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="22"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/liverpool-home.jpg" alt="Liverpool Home Jersey 2024/25">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Liverpool Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="23"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/united-home.jpg" alt="Manchester United Home Jersey 2024/25">
                        <div class="product-tag">Popular</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Manchester United Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="24"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/chelsea-home.jpg" alt="Chelsea Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Chelsea Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="25"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/tottenhame-home.jpg" alt="Tottenham Hotspur Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Tottenham Hotspur Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="26"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/Newcastle-home.jpg" alt="Newcastle United Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Newcastle United Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="27"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/astonvilla-home.jpg" alt="Aston Villa Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Aston Villa Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="28"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/westham-home.jpg" alt="West Ham United Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">West Ham United Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="29"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/brighton-home.jpg" alt="Brighton Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Brighton Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="30"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/liverpool-away.jpg" alt="Liverpool Away Jersey 2024/25">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Liverpool Away Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="31"/>
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
                        <img src="${pageContext.request.contextPath}/Images/pl/united-away.jpg" alt="Manchester United Away Jersey 2024/25">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Manchester United Away Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="32"/>
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
            <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="page-link">1</a>
            <a href="${pageContext.request.contextPath}/Pages/pl.jsp" class="page-link active">2</a>
            <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="page-link">3</a>
            <a href="${pageContext.request.contextPath}/Pages/seria.jsp" class="page-link">4</a>
            <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="page-link next">Next</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>