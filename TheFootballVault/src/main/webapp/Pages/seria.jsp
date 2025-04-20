<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Football Vault - Serie A</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/products.css" />
</head>
<body>
 <%@ include file="header.jsp" %>
 
    <div class="page-header">
        <div class="container">
            <h1 class="page-title">Serie A Jersey</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> >
                <a href="${pageContext.request.contextPath}/Pages/football.jsp">Football Jerseys</a> > Serie A Jersey
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
                        <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="filter-btn">La Liga</a>
                        <a href="${pageContext.request.contextPath}/Pages/seria.jsp" class="filter-btn active">Serie A</a>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/inter-home.jpg" alt="Inter Milan Home Jersey 2024/25">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Inter Milan Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="61"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/acmilan-home.jpg" alt="AC Milan Home Jersey 2024/25">
                        <div class="product-tag">Popular</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">AC Milan Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="62"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/juventus-home.jpg" alt="Juventus Home Jersey 2024/25">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Juventus Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="63"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/napoli-home.jpg" alt="Napoli Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Napoli Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="64"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/asroma-home.jpg" alt="AS Roma Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">AS Roma Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="65"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/lazio-home.jpg" alt="Lazio Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Lazio Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="66"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/atlanta-home.jpg" alt="Atalanta Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Atalanta Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="67"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/fiorentana-home.jpg" alt="Fiorentina Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Fiorentina Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="68"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/bologna-home.jpg" alt="Bologna Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Bologna Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="69"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/torino-home.jpg" alt="Torino Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Torino Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="70"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/juventus-away.jpg" alt="Juventus Away Jersey 2024/25">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Juventus Away Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="71"/>
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
                        <img src="${pageContext.request.contextPath}/Images/seriea/inter-away.jpg" alt="Inter Milan Away Jersey 2024/25">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Inter Milan Away Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="72"/>
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
            <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="page-link">3</a>
            <a href="${pageContext.request.contextPath}/Pages/seria.jsp" class="page-link active">4</a>
            <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="page-link next">Back</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>