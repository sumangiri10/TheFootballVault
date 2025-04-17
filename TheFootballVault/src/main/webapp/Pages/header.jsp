<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
</head>
<body>
<header>
    <div class="top-header">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/Pages/home.jsp">
                <img src="${pageContext.request.contextPath}/Images/5.png" alt="Jersey Hub Logo">
            </a>
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Search for jerseys...">
            <button class="search-button">
                <img src="${pageContext.request.contextPath}/Images/search.png" alt="Search" class="icon-img">
            </button>
        </div>
        <div class="header-icons">
            <div class="icon-container">
                <a href="${pageContext.request.contextPath}/Pages/cart.jsp" class="icon-link">
                    <span class="icon-badge">
                        <img src="${pageContext.request.contextPath}/Images/cart.png" alt="Cart" class="icon-img">
                    </span>
                </a>
            </div>
            <div class="icon-container">
                <a href="${pageContext.request.contextPath}/Pages/account.jsp" class="icon-link">
                    <span class="icon-badge">
                    <img src="${pageContext.request.contextPath}/Images/account.png" alt="Account" class="icon-img">
                    </span>
                </a>
            </div>
            <div class="icon-container">
                <a href="${pageContext.request.contextPath}/Pages/shipping.jsp" class="icon-link">
                    <span class="icon-badge">
                    <img src="${pageContext.request.contextPath}/Images/shipping.png" alt="Shipping" class="icon-img">
                    </span>
                </a>
            </div>
        </div>
    </div>
</header>

<!-- Navigation Menu -->
<nav class="main-nav" id="mainNav">
    <ul class="nav-menu">
        <li class="nav-item tagline-item">
            <div class="tagline">Nepal's Top Jersey</div>
        </li>
        <li class="nav-item">
            <a href="${pageContext.request.contextPath}/Pages/home.jsp" class="nav-link ${param.activePage == 'home' ? 'active' : ''}">Home</a>
        </li>
        <li class="nav-item dropdown">
            <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="nav-link ${param.activePage == 'football' ? 'active' : ''}">
                Football Jerseys
                <img src="${pageContext.request.contextPath}/Images/menu.png" alt="Expand" class="dropdown-icon">
            </a>
            <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath}/Pages/pl.jsp" >Premier League</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/laliga.jsp">La Liga</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/seria.jsp">Serie A</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="${pageContext.request.contextPath}/Pages/kids.jsp" class="nav-link ${param.activePage == 'kids' ? 'active' : ''}">Kids Jerseys</a>
        </li>
        <li class="nav-item dropdown">
            <a href="${pageContext.request.contextPath}/Pages/retrojersey.jsp" class="nav-link ${param.activePage == 'retro' ? 'active' : ''}">
                Retro Jerseys
                <img src="${pageContext.request.contextPath}/Images/menu.png" alt="Expand" class="dropdown-icon">
            </a>
            <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath}/Pages/1990s.jsp">1990s</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/2000s.jsp">2000s</a></li>
            </ul>
        </li>
        <li class="nav-item dropdown">
            <a href="${pageContext.request.contextPath}/Pages/international.jsp" class="nav-link ${param.activePage == 'international' ? 'active' : ''}">
                International Jerseys
                <img src="${pageContext.request.contextPath}/Images/menu.png" alt="Expand" class="dropdown-icon">
            </a>
            <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath}/Pages/europe.jsp">Europe</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/southamerica.jsp">South America</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/asias.jsp">Asia</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="${pageContext.request.contextPath}/Pages/boots.jsp" class="nav-link ${param.activePage == 'boots' ? 'active' : ''}">Boots</a>
        </li>
        <li class="nav-item">
            <a href="${pageContext.request.contextPath}/Pages/contact.jsp" class="nav-link ${param.activePage == 'contact' ? 'active' : ''}">Contact Us</a>
        </li>
        <li class="nav-item">
            <a href="${pageContext.request.contextPath}/Pages/about.jsp" class="nav-link ${param.activePage == 'about' ? 'active' : ''}">About Us</a>
        </li>
    </ul>
</nav>

<!-- Announcement Bar -->
<div class="announcement-bar">
    <p>Enjoy free shipping all across Nepal on orders over Rs.2000 | Cash on Delivery available nationwide!</p>
</div>
</body>
</html>