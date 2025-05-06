<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cookie Consent - The Football Vault</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }
        .consent-container {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            max-width: 500px;
            text-align: center;
        }
        .consent-container p {
            margin-bottom: 20px;
        }
        .consent-container form {
            display: inline-block;
        }
        .consent-container button {
            padding: 10px 20px;
            margin: 0 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="consent-container">
        <h2>Cookie Consent</h2>
        <p>We use cookies to enhance your experience. Please choose an option below:</p>
        <form action="${pageContext.request.contextPath}/cookie-consent" method="post">
            <button type="submit" name="action" value="accept">Accept</button>
            <button type="submit" name="action" value="decline">Decline</button>
        </form>
    </div>
</body>
</html>