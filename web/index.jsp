<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Homepage</title>
    <style>
        body {
            background: linear-gradient(to bottom, #3f9bb7, #90EE90);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .navbar {
            width: 100%;
            background-color: #333;
            padding: 10px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            top: 0;
        }
        .nav-logo {
            color: white;
            font-size: 20px;
            font-weight: bold;
            margin-left: 20px;
        }
        .nav-links {
            display: flex;
            gap: 20px;
            margin-right: 20px;
        }
        .nav-link {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        .content {
            background: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            backdrop-filter: blur(5px);
            text-align: center;
            margin-top: 60px; /* Add margin to push content below the fixed navbar */
        }
        h1 {
            color: white;
            font-size: 48px;
            text-align: center;
            margin-bottom: 30px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        h2 {
            color: white;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .buttons-container {
            display: flex;
            justify-content: center;
            margin: 0 20px;
        }
        .button {
            padding: 10px 20px;
            margin: 0 20px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="navbar">
    <div class="nav-logo">My Logo</div>
    <div class="nav-links">
        <a href="#" class="nav-link">Home</a>
        <a href="#" class="nav-link">About</a>
        <!-- Add more navigation links as needed -->
    </div>
</div>
<div class="content">
    <h1>Welcome to My Website</h1>
    <h2>Subtitle</h2>
    <div class="buttons-container">
        <a href="Login.jsp" class="button">Login</a>
        <a href="#" class="button">Register</a>
    </div>
</div>
</body>
</html>