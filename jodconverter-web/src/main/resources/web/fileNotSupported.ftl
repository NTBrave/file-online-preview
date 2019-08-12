<!DOCTYPE html>

<html lang="en">

<head>
    <style type="text/css">
        body {
            margin: 0 auto;
            width: 100%;
            /* width: 900px; */
            /* background-color: #CCB; */
        }

        .container {
            width: 80%;
            height: 80%;
            /* float: left; */
            /* margin: 20% 0 0 40%; */
            /* position: fixed; */
            /* top: 0%; */
            text-align: center;
            /* width: 700px; */
            /* height: 700px; */
            margin: 0 auto;
        }

        img {
            max-width: 100%;
            max-height: 100%;
        }

        /* span { 
            display: block;
            font-size: 20px;
            margin-top: 1%;
            color: blue;
        } */
        img {
            max-width: 100%;
            max-height: 100%;
        }
        .el-header {
            height: 60px;
            z-index: 999;
            background-color: white;
            width: 100%;
            line-height: 60px;
            box-shadow: rgba(0, 0, 0, 0.07) 0px 5px 6px 0px;

        }

        .el-image {
            height: 50px;
            width: 240px;
            padding: 5px 5px 5px 15px;
            float: left;
        }

        .sorryImages {
            margin: 0 auto;
            width: 50%;
            height: 50%;
        }
    </style>
</head>

<body>
    <!-- <div style="background-color: rgb(0, 21, 41); width: 200px; opacity: 0.95; height: 60px; position: fixed;">
        <p style="text-align: left; padding: 10px 0px 5px 10px; margin: 0px;"><img src="images/favicon.png" alt=""
                width="30%;"></p>
    </div> -->
    <header class="el-header">
        <div class="el-image"><img src="images/logo.png" class="el-image__inner"></div>
    </header>
    <div class="container">
        <div class="sorryImages">
            <img src="images/sorry.svg" />

        </div>
        <div>很抱歉~~~</div>
        <div>
            ${fileType}文件 系统暂时不支持在线预览
        </div>
    </div>
</body>

</html>