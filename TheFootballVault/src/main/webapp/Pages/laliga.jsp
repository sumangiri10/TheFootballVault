<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Football Vault - La Liga</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/products.css" />
</head>
<body>
 <%@ include file="header.jsp" %>
 
    <div class="page-header">
        <div class="container">
            <h1 class="page-title">La Liga Jersey</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> >
                <a href="${pageContext.request.contextPath}/Pages/football.jsp">Football Jerseys</a> > La Liga Jersey
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
                        <a href="${pageContext.request.contextPath}/Pages/pl.jsp" class="filter-btn">Premier League</a>
                        <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="filter-btn active">La Liga</a>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/realmadrid-home.jpg" alt="Real Madrid Home Jersey 2024/25">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Real Madrid Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1700</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="41"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/barca-home.jpg" alt="Barcelona Home Jersey 2024/25">
                        <div class="product-tag">Popular</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Barcelona Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1800</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="42"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/atletico-home.jpg" alt="Atletico Madrid Home Jersey 2024/25">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Atletico Madrid Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="43"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/sevilla-home.jpg" alt="Sevilla Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Sevilla Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="44"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/valencia-home.jpg" alt="Valencia Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Valencia Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="45"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/villareal-home.jpg" alt="Villarreal Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Villarreal Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="46"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/betis-home.jpg" alt="Real Betis Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Real Betis Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="47"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/socieded-home.jpg" alt="Real Sociedad Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Real Sociedad Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="48"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/athleticclub-home.jpg" alt="Athletic Bilbao Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Athletic Bilbao Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="49"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/celtavigo-home.jpg" alt="Celta Vigo Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Celta Vigo Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="50"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/realmadrid-away.jpg" alt="Real Madrid Away Jersey 2024/25">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Real Madrid Away Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="51"/>
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
                        <img src="${pageContext.request.contextPath}/Images/laliga/barca-away.jpg" alt="Barcelona Away Jersey 2024/25">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Barcelona Away Jersey 2024/25</h3>
                        <div class="product-price">Rs. 2000</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="52"/>
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
            <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="page-link">1</a>
            <a href="${pageContext.request.contextPath}/Pages/pl.jsp" class="page-link">2</a>
            <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="page-link active">3</a>
            <a href="${pageContext.request.contextPath}/Pages/seria.jsp" class="page-link">4</a>
            <a href="${pageContext.request.contextPath}/Pages/seria.jsp" class="page-link next">Next</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>