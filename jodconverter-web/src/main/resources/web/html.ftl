<!DOCTYPE html>

<html lang="en">
<head>
    <style type="text/css">
        body{
            margin: 0;
            padding:0;
            border:0;
        }
        .el-header {
            height: 60px;
            z-index: 999;
            background-color: white;
            width: 100%;
            line-height: 60px;
            box-shadow: rgba(0, 0, 0, 0.07) 0px 5px 6px 0px;

        }
        img {
            max-width: 100%;
            max-height: 100%;
        }
        .el-image {
            height: 50px;
            width: 240px;
            padding: 5px 5px 5px 15px;
            float: left;
        }
    </style>
</head>
<body>
        <header class="el-header">
                <div class="el-image"><img src="images/logo.png" class="el-image__inner"></div>
            </header>

    <iframe src="${pdfUrl}" width="100%" frameborder="0"></iframe>
</body>
<script type="text/javascript">
    document.getElementsByTagName('iframe')[0].height = document.documentElement.clientHeight-10;
    /**
     * 页面变化调整高度
     */
    window.onresize = function(){
        var fm = document.getElementsByTagName("iframe")[0];
        fm.height = window.document.documentElement.clientHeight-10;
    }
</script>
</html>