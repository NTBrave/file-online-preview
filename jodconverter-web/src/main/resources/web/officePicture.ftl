<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>office图片预览</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="js/lazyload.js"></script>
    <style>
        .container {
            width: 100%;
            height: 100%;
        }

        .img-area {
            text-align: center
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
        }  img {
            max-width: 100%;
            max-height: 100%;
        }
    </style>
</head>

<body bgcolor="#404040">
    <header class="el-header">
        <div class="el-image"><img src="images/logo.png" class="el-image__inner"></div>
    </header>
    <div class="container">
        <#list imgurls as img>
            <div class="img-area">
                <img class="my-photo" alt="loading" title="查看大图" style="cursor: pointer;" data-src="${img}"
                    src="images/loading.gif" onclick="changePreviewType('allImages')">
            </div>
        </#list>
    </div>
    <#--<img src="images/right.png" style="position: fixed; cursor: pointer; top: 40%; right: 60px; z-index: 999;"
        alt="使用PDF预览" title="使用PDF预览" onclick="changePreviewType('pdf')" />-->
    <span class="fa fa-file-pdf-o fa-5x" style="position: fixed; cursor: pointer; top: 40%; right: 50px; z-index: 999;"
        title="使用PDF预览" onclick="changePreviewType('pdf')"></span>
    <script>
        window.onload = checkImgs;
        window.onscroll = throttle(checkImgs);
        function changePreviewType(previewType) {
            var url = window.location.href;
            if (url.indexOf("officePreviewType=image") != -1) {
                url = url.replace("officePreviewType=image", "officePreviewType=" + previewType);
            } else {
                url = url + "&officePreviewType=" + previewType;
            }
            if ('allImages' == previewType) {
                window.open(url)
            } else {
                window.location.href = url;
            }
        }
    </script>
</body>

</html>