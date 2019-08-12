<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>普通文件预览</title>
    <style type="text/css">
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
        }  img {
            max-width: 100%;
            max-height: 100%;
        }
    </style>
</head>



<body>
    <header class="el-header">
        <div class="el-image"><img src="images/logo.png" class="el-image__inner"></div>
    </header>
    <script language="javascript" type="text/javascript">
        window.location.href = "${ordinaryUrl}";
    </script>


</body>

</html>