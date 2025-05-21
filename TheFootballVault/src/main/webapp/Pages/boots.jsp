<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Football Vault - Football Boots</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/products.css" />
</head>
<body>
    <jsp:include page="header.jsp">
        <jsp:param name="activePage" value="boots" />
    </jsp:include>
    <div class="page-header">
        <div class="container">
            <h1 class="page-title">FOOTBALL BOOTS</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > Football Boots
            </div>
        </div>
    </div>

    <section class="products-section">
        <div class="container">
            <div class="products-grid">
                <!-- Product 1 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-1.jpg" alt="Nivia Airstrike Men’s Football Shoes">
                        <div class="product-tag">New</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Nivia Airstrike Football Shoes</h3>
                        <div class="product-price">Rs. 2800</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="81"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-2.jpg" alt="Nivia Ditmar 2.0 Football Boots">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Nivia Ditmar 2.0 Football Boots</h3>
                        <div class="product-price">Rs. 3000</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="82"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-3.jpg" alt="Nivia Dominator Football Shoes">
                        <div class="product-tag">Popular</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Nivia Dominator Football Shoes</h3>
                        <div class="product-price">Rs. 2000</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="83"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-4.jpg" alt="Vector X Turbo X Football Boots">
                        <div class="product-tag">Hot</div>
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Vector X Turbo X Football Boots</h3>
                        <div class="product-price">Rs. 2400</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="84"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 5 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-5.jpg" alt="Vector X Velocity Football Shoes">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Vector X Velocity Football Shoes</h3>
                        <div class="product-price">Rs. 3050</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="85"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 6 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-6.jpg" alt="Vector X Royale+ Football Boots">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Vector X Royale+ Football Boots</h3>
                        <div class="product-price">Rs. 3200</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="86"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 7 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-7.jpg" alt="Vector X Nitro X Kids Football Boots">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Vector X Nitro X Kids Football Boots</h3>
                        <div class="product-price">Rs. 1990</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="87"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 8 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-8.jpg" alt="Football Shoes For Mens">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Football Shoes For Mens</h3>
                        <div class="product-price">Rs. 3000</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="88"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 9 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-9.jpg" alt="Men Soccer Shoes Grass Training Cleats Footwear">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Men Soccer Shoes Grass Training Cleats Footwear</h3>
                        <div class="product-price">Rs. 2600</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="89"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 10 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-10.jpg" alt="Football Boots Vector X Electra">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Football Boots Vector X Electra</h3>
                        <div class="product-price">Rs. 1050</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="90"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 11 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-11.jpg" alt="Anza Futsal Boots for Boys">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Anza Futsal Boots for Boys</h3>
                        <div class="product-price">Rs. 2100</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="91"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
                                </select>
                            </div>
                            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>

                <!-- Product 12 -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/boots/product-12.jpg" alt="Sneakers Cleats Futsal Football Boots">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">Sneakers Cleats Futsal Football Boots</h3>
                        <div class="product-price">Rs. 2200</div>
                        <form action="${pageContext.request.contextPath}/addToCart" method="post" class="add-to-cart-form">
                            <input type="hidden" name="productId" value="92"/>
                            <input type="hidden" name="quantity" value="1"/>
                            <div class="product-sizes">
                                <select name="size" required>
                                    <option value="">Select size</option>
                                    <option value="30">30</option>
                                    <option value="32">32</option>
                                    <option value="34">34</option>
                                    <option value="36">36</option>
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