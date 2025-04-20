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
	    <jsp:param name="activePage" value="football" />
	  </jsp:include>
    <div class="page-header">
        <div class="container">
            <h1 class="page-title">FOOTBALL JERSEYS</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > Football Jerseys
            </div>
        </div>
    </div>

    <div class="product-filters">
        <div class="container">
            <div class="filter-options">
                <div class="filter-group">
                    <span class="filter-label">League:</span>
                    <div class="filter-buttons">
                        <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="filter-btn active">All</a>
                        <a href="${pageContext.request.contextPath}/Pages/pl.jsp" class="filter-btn">Premier League</a>
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
                        <img src="${pageContext.request.contextPath}/Images/product/psghome.jpg" alt="PSG Home Jersey 2024/25">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">PSG Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
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
                        <img src="${pageContext.request.contextPath}/Images/product/bayernhome.jpg" alt="Bayern Munich Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Bayern Munich Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1600</div>
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
                        <img src="${pageContext.request.contextPath}/Images/product/alnassarhome.jpg" alt="Al Nassr Home Jersey 2024/25">
                        <div class="product-tag">Popular</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Al Nassr Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1650</div>
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
                        <img src="${pageContext.request.contextPath}/Images/product/intermiamihome.jpg" alt="Inter Miami Home Jersey 2024/25">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Inter Miami Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1650</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="4"/>
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
                        <img src="${pageContext.request.contextPath}/Images/product/marseille-home.jpg" alt="Marseille Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Marseille Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="5"/>
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
                        <img src="${pageContext.request.contextPath}/Images/product/dortmund-home.jpg" alt="Borussia Dortmund Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Borussia Dortmund Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="6"/>
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
                        <img src="${pageContext.request.contextPath}/Images/product/alhilal-home.jpg" alt="Al Hilal Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Al Hilal Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="7"/>
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
                        <img src="${pageContext.request.contextPath}/Images/product/lagalaxyhome.jpg" alt="LA Galaxy Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">LA Galaxy Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
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

                <!-- Product 9 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/lyonhome.jpg" alt="Lyon Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Lyon Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="9"/>
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
                        <img src="${pageContext.request.contextPath}/Images/product/rbleipzig-home.jpg" alt="RB Leipzig Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">RB Leipzig Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
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

                <!-- Product 11 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/al-ittihad.jpg" alt="Al-Ittihad Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Al-Ittihad Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="11"/>
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
                        <img src="${pageContext.request.contextPath}/Images/product/atlanta-home.jpg" alt="Atlanta United Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Atlanta United Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
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

                <!-- Product 13 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/monaco-away.jpg" alt="Monaco Away Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Monaco Away Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="13"/>
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

                <!-- Product 14 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/leverkusen-home.jpg" alt="Bayer Leverkusen Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Bayer Leverkusen Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="14"/>
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

                <!-- Product 15 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/alahli-home.jpg" alt="Al-Ahli Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Al-Ahli Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="15"/>
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

                <!-- Product 16 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/lagalaxyhome.jpg" alt="LAFC Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">LAFC Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="16"/>
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

                <!-- Product 17 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/lille-home.jpg" alt="Lille Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Lille Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="17"/>
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

                <!-- Product 18 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/Stuttgart-home.jpg" alt="VfB Stuttgart Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">VfB Stuttgart Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="18"/>
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

                <!-- Product 19 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/alettifaq-home.jpg" alt="Al-Ettifaq Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Al-Ettifaq Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="19"/>
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

                <!-- Product 20 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/product/seattle-home.jpg" alt="Seattle Sounders Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Seattle Sounders Home Jersey 2024/25</h3>
                        <div class="product-price">Rs. 1500</div>
                        <form action="CartServlet" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="20"/>
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
            <a href="${pageContext.request.contextPath}/Pages/pl.jsp" class="page-link">2</a>
            <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="page-link">3</a>
            <a href="${pageContext.request.contextPath}/Pages/seria.jsp" class="page-link">4</a>
            <a href="${pageContext.request.contextPath}/Pages/pl.jsp" class="page-link next">Next</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
