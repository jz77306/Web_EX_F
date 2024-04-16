<%--
  Created by IntelliJ IDEA.
  User: xuyixiang
  Date: 2024/4/11
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
    <style>
        body {
            background-image: url("image/back.wbep.webp");
            background-size: cover; /* 将背景图片缩放以填充整个页面 */
            background-position: center; /* 将背景图片居中 */
            font-family: SimSun, serif; /* 将字体改为宋体 */
            margin: 0;
            padding: 0;
            position: relative; /* 让body成为定位上下文 */
        }
        .animation-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 90%;
            height: 100%;
            overflow: hidden;
            z-index: -1; /* 将动画容器置于背景 */
        }
        .bubbles {
            position: relative;
            display: flex;
        }
        .bubbles span {
            position: relative;
            width: 30px;
            height: 30px;
            background: #4fc3d3;
            margin: 0 4px;
            border-radius: 50%;
            box-shadow: 0 0 0 10px #4fc3dc44,
            0 0 50px #4fc3dc,
            0 0 100px #4fc3dc;
            animation: animate 15s linear infinite;
            animation-duration: calc(125s / var(--i));
        }
        .bubbles span:nth-child(even) {
            background: #ff2d75;
            box-shadow: 0 0 0 10px #ff2d7544,
            0 0 50px #ff2d75,
            0 0 100px #ff2d75;
        }
        @keyframes animate {
            0% {
                transform: translateY(100vh) scale(0);
            }
            100% {
                transform: translateY(-10vh) scale(1);
            }
        }
        .navbar-container {
            width: 90%; /* 将宽度改为页面宽度的 90% */
            height: 100px; /* 设置用户信息板块的高度为 200px */
            margin: 20px auto; /* 水平居中 */
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.36); /* 使用玻璃材质的背景颜色 */
            overflow: auto;
            padding: 10px; /* 缩小高度 */
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
            position: relative; /* 让导航栏容器成为定位上下文 */

        }
        .navbar {
            height: 60px; /* 缩小高度 */
            background-color: rgba(255, 255, 255, 0);
            display: flex;
            align-items: center;
            justify-content: space-between; /* 设置项目之间的间隙 */
            padding: 0 20px; /* 左右留出空间 */
        }
        .navbar-right {
            top:50%;
            display: flex;
            align-items: center;
        }
        .navbar img {
            width: 50px;
            height: 50px;
            top:50%;
            border-radius: 50%;
            margin-right: 20px;
            margin-top: 50px;
        }
        .navbar .return-btn {

            display: inline-block; /*把button转换成行内块元素*/
            border-radius: 4px;/*设置圆角*/
            background-color: #42d3bf;
            border: none;
            color: #FFFFFF;
            text-align: left;
            font-size: 14px;
            padding: 20px;
            width: 90px;
            top:50%;
            transition: all 0.5s; /*设置动画效果*/
            cursor: pointer;/*鼠标指针变成小手*/
            margin: 0 20px;
            margin-top:50px;
        }
        .navbar .return-btn span{
            cursor: pointer; /*鼠标指针变成小手*/
            display: inline-block;
            position: relative;/*给一个相对定位，让动画效果实现后，在文档流中的位置仍然保留*/
            transition: 0.5s;/*动画效果时间*/

        }
        .navbar .return-btn :after {
            content: '\00bb';/*00bb是显示》*/
            position: absolute;/*因为父元素为相对定位，所以给子元素一个绝对定位，让位置不发生偏移*/
            opacity: 0;/*设置透明度*/
            top: 0;/*设置定位位置*/
            right: -20px;
            transition: 0.5s;
        }

        .navbar .return-btn:hover span {
            padding-right: 25px;/*设置当鼠标停留button时的使右内边距发生效果*/
        }
        .navbar .return-btn:hover span:after {
            opacity: 1;
            right: 0;
        }


        .container {
            width: 90%;
            margin: 20px auto;
            display: flex; /* 水平排列 */
            justify-content: space-between; /* 两者之间保留间隙 */
        }
        .user-info-container {
            width: 12%; /* 宽度为页面宽度的 30% */
            height: 600px; /* 设置用户信息板块的高度为 200px */
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.7); /* 使用玻璃材质的背景颜色 */
            padding: 20px; /* 调整内边距 */
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }
        .user-info {
            writing-mode: vertical-rl; /* 竖直排列文字 */
            text-align: left;
            margin-left: 5px; /* 垂直居中 */
        }
        @keyframes flash {
            0% {
                color: #98a7e3; /* 开始颜色 */
            }
            50% {
                color: #b48595; /* 中间颜色 */
            }
            100% {
                color: #84aaaf; /* 结束颜色 */
            }
        }

        .user-info h2,
        .user-info p {
            animation: flash 1s linear infinite; /* 应用动画效果 */

            margin: 10px; /* 添加间距 */
        }

        .games-container {
            width: 80%; /* 宽度为页面宽度的 80% */
            height: 600px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.66); /* 使用玻璃材质的背景颜色 */
            padding: 20px; /* 调整内边距 */
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }
        .games {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }
        .game-item {
            text-align: center;
            margin: 10px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 20px;
            padding: 10px;
        }
        .game-item img {
            width: 200px;
            height: 100px;
        }
        .game-item img:hover {
            cursor: pointer;
        }
        .games-container::-webkit-scrollbar {
            width: 8px;
        }
        .games-container::-webkit-scrollbar-track {
            border-radius: 8px;
            background: rgba(0, 0, 0, 0.05);
        }
        .games-container::-webkit-scrollbar-thumb {
            border-radius: 10px;
            background: #cfcece;
        }
    </style>
</head>
<body>
<div class="navbar-container">
    <div class="navbar">
        <img src="image/login.jpg" alt="Logo">
        <div class="navbar-right"> <!-- 新增的容器 -->
            <div>
                <a class="return-btn" href="Login.jsp" style="vertical-align:middle"><span>返回登录</span></a>
            </div>
            <div class="user-profile">
                <img src="image/user-avatar.png" alt="User Avatar" width="50" height="50">
                <span>User Name</span>
            </div>
        </div>

    </div>
</div>

<div class="animation-container">
    <div class="bubbles">
        <span style="--i:11;"></span>
        <span style="--i:12;"></span>
        <span style="--i:24;"></span>
        <span style="--i:10;"></span>
        <span style="--i:14;"></span>
        <span style="--i:23;"></span>
        <span style="--i:18;"></span>
        <span style="--i:16;"></span>
        <span style="--i:19;"></span>
        <span style="--i:20;"></span>
        <span style="--i:22;"></span>
        <span style="--i:25;"></span>
        <span style="--i:18;"></span>
        <span style="--i:21;"></span>
        <span style="--i:15;"></span>
        <span style="--i:13;"></span>
        <span style="--i:26;"></span>
        <span style="--i:17;"></span>
        <span style="--i:13;"></span>
        <span style="--i:28;"></span>
        <span style="--i:29;"></span>
        <span style="--i:11;"></span>
        <span style="--i:12;"></span>
        <span style="--i:24;"></span>
        <span style="--i:10;"></span>
        <span style="--i:14;"></span>
        <span style="--i:23;"></span>
        <span style="--i:18;"></span>
        <span style="--i:16;"></span>
        <span style="--i:19;"></span>
        <span style="--i:20;"></span>
        <span style="--i:22;"></span>
        <span style="--i:25;"></span>
        <span style="--i:18;"></span>
        <span style="--i:21;"></span>
        <span style="--i:15;"></span>
        <span style="--i:13;"></span>
        <span style="--i:26;"></span>
        <span style="--i:17;"></span>
        <span style="--i:13;"></span>
        <span style="--i:28;"></span>
        <span style="--i:29;"></span>

    </div>
</div>

<div class="container">
    <div class="user-info-container">
        <div class="user-info">

            <p style="font-size: 24px;">最近游玩的游戏：游戏名称</p>
            <p style="font-size: 24px;">游玩时间：XXX小时</p>
            <h2 style="font-size: 24px;">用户信息</h2>
        </div>
    </div>

    <div class="games-container">
        <h2 style="font-size: 24px;">选择游戏</h2>
        <div class="games">
            <div class="game-item">
                <a href="Games/Maze/Maze.html">
                    <img src="image/game1_logo.png" alt="Game 1">
                </a>
            </div>
            <div class="game-item">
                <a href="game2_details.jsp">
                    <img src="image/game2_logo.png" alt="Game 2">
                </a>
            </div>
            <!-- 其他游戏项目 -->
        </div>
    </div>
</div>

</body>
</html>
