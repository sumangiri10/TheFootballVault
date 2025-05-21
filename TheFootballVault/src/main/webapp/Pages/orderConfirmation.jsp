<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Football Vault - Order Confirmation</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/account.css" />
    <style>
        .confirmation-container {
            max-width: 600px;
            margin: 80px auto;
            padding: 40px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        
        .confirmation-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 25px;
            background-color: #4cd964;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }
        
        /* Using a more reliable checkmark with CSS */
        .confirmation-icon::after {
            content: "";
            width: 30px;
            height: 15px;
            border-left: 4px solid white;
            border-bottom: 4px solid white;
            transform: rotate(-45deg);
            position: absolute;
            top: 30px;
        }
        
        .confirmation-container h1 {
            color: #333;
            font-size: 32px;
            margin-bottom: 20px;
        }
        
        .confirmation-container p {
            color: #666;
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 30px;
        }
        
        .continue-shopping-btn {
            display: inline-block;
            background-color: #e28743;
            color: white;
            padding: 14px 36px;
            border-radius: 4px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
            border: none;
            font-size: 16px;
            cursor: pointer;
            letter-spacing: 0.5px;
        }
        
        .continue-shopping-btn:hover {
            background-color: #d17632;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <main>
        <div class="confirmation-container">
            <div class="confirmation-icon"></div>
            <h1>Thank You for Your Order!</h1>
            <p>Your order has been successfully placed and will be processed soon.</p>
            <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="continue-shopping-btn">Continue Shopping</a>
        </div>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>