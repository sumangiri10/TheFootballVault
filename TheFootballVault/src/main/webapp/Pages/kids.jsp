<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Football Vault - Kids Jerseys</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/products.css" />
</head>
<body>
	<jsp:include page="header.jsp">
	    <jsp:param name="activePage" value="kids" />
	  </jsp:include>
    <div class="page-header">
        <div class="container">
            <h1 class="page-title">KIDS JERSEYS</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > Kids Jerseys
            </div>
        </div>
    </div>

    <section class="products-section">
        <div class="container">
            <div class="products-grid">
                <!-- Product 1 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/kids/psg-kids.jpg" alt="PSG Kids Jersey 2024/25 Home">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">PSG Kids Jersey 2024/25 Home</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="57"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/bayern-kids.jpg" alt="Bayern Munich Kids Jersey 2024/25 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Bayern Munich Kids Jersey 2024/25 Away</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="58"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/alnassar-kids.jpg" alt="Al Nassr Kids Jersey 2024/25 Home">
                        <div class="product-tag">Popular</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Al Nassr Kids Jersey 2024/25 Home</h3>
                        <div class="product-price">Rs. 1650</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="59"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/miami-kids.jpg" alt="Inter Miami Kids Jersey 2024/25 Home">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Inter Miami Kids Jersey 2024/25 Home</h3>
                        <div class="product-price">Rs. 1650</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="60"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/madrid-kids.jpeg" alt="Real Madrid 2024/25 Kids Jersey Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Real Madrid 2024/25 Kids Jersey Home</h3>
                        <div class="product-price">Rs. 1700</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="61"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/dortmund-kids.jpg" alt="Borussia Dortmund Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Borussia Dortmund Kids Jersey 2024/25 Home</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="62"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/intermilan-kids.jpg" alt="Al Hilal Home Jersey 2024/25">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Inter Milan Kids Jersey 2024/25 Away</h3>
                        <div class="product-price">Rs. 1550</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="63"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/barca-kids.jpg" alt="Barcelona 2024/25 Kids Jersey Home ">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Barcelona 2024/25 Kids Jersey Home</h3>
                        <div class="product-price">Rs. 1800</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="64"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/liverpool-kids.jpg" alt="Liverpool Kids Jersey 2024/25 Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Liverpool Kids Jersey 2024/25 Home</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="65"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/arsenal-kids.jpg" alt="Arsenal Kids Jersey 2024/25 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Arsenal Kids Jersey 2024/25 Away</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="66"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/united-kids.jpg" alt="Manchester United Kids Jersey 2024/25 Home">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Manchester United Kids Jersey 2024/25 Home</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="67"/>
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
                        <img src="${pageContext.request.contextPath}/Images/kids/chelsea-kids.jpg" alt="Chelsea Kids Jersey 2024/25 Away">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Chelsea Kids Jersey 2024/25 Away</h3>
                        <div class="product-price">Rs. 1600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="68"/>
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
    <%@ include file="footer.jsp" %>
</body>
</html>