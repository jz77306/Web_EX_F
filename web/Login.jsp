<%--
  Created by IntelliJ IDEA.
  User: 86137
  Date: 2024/2/26
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="x-UTF-8">
  <title>Login Page</title>
  <style>
    body{
      background: linear-gradient(to right, rgba(101, 247, 225, 0.84), #4e54b0);
      width: 100vw;
      height: 100vh;
      margin: 0;
    }
    .Box{
      width: 60%;
      height: 450px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.8);
      display: flex;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }
    .Left{
      width: 65%;
    }
    .Left>img{
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .Right{
      width: 35%;
      height: 100%;
      background-color: #fff;
      box-sizing: border-box;
      padding: 0 20px;
    }
    h1{
      text-align: center;
      padding-top: 45px;
      margin-top: 0;
    }
    .InputItem{
      height: 44px;
      padding: 0 0 0 5px;
      border: none;
      background: none;
      outline: none;
      border-bottom: 3px solid #4e54b0;
      width: 100%;
      font-size: 18px;
      margin-top: 20px;
    }
    .ForgetPassword{
      margin-top: 25px;
      color: cadetblue;
      text-align: right;
      display: block;
    }
    .Btn{
      background: #65CBF7;
      color: #9C3943;
      font-weight: bolder;
      border: none;
      border-radius: 30px;
      height: 46px;
      width: 80%;
      font-size: 18px;
      display: block;
      margin: auto;
      margin-top: 30px;
    }
  </style>
</head>
<body>
<div class="Box">
  <div class="Left">
    <img src="login.jpg" alt="">
  </div>
  <div class="Right">
    <h1>login</h1>
    <form action="login" method="post">
      <input type="UserName" name="UserName", class="InputItem" placeholder="Your Account">
      <input type="PassWord" name="PassWord" class="InputItem" placeholder="YourPassWord">
      <a href="#" class="ForgetPassword">ForgetPassword</a>
      <button type="submit" class="Btn">Login</button>
    </form>
  </div>
</div>
</body>
</html>
