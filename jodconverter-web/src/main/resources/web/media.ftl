<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>多媒体文件预览</title>
    <link rel="stylesheet" href="plyr/plyr.css">
</head>
<style>
    body {
        background-color: #262626
    }

    .m {
        margin-left: auto;
        margin-right: auto;
        width: 640px;
        margin-top: 100px;
    }
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
</style>

<body>
    <header class="el-header">
        <div class="el-image"><img src="images/logo.png" class="el-image__inner"></div>
    </header>
    <div class="m">
        <video controls>
            <source src="${mediaUrl}">
        </video>
    </div>
    <script src="plyr/plyr.js"></script>
    <script>
        plyr.setup();
    </script>
</body>

</html>