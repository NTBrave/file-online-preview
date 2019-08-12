<!DOCTYPE html>

<html lang="en">

<head>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            border: 0;
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

<body>
    <header class="el-header">
        <div class="el-image"><img src="images/logo.png" class="el-image__inner"></div>
    </header>
    <#if pdfUrl?contains("http://") || pdfUrl?contains("https://")> <#assign finalUrl="${pdfUrl}">
        <#else>
            <#assign finalUrl="${baseUrl}${pdfUrl}">
    </#if>
    <iframe src="" width="100%" frameborder="0"></iframe>

    <#-- <img src="images/left.png" style="position: fixed; cursor: pointer; top: 40%; right: 60px; z-index: 999;"
        alt="使用图片预览" title="使用图片预览" onclick="goForImage()" />-->
    <span class="fa fa-file-image-o fa-5x"
        style="position: fixed; cursor: pointer; top: 40%; right: 50px; z-index: 999;" title="使用图片预览"
        onclick="goForImage()"></span>


</body>
<script type="text/javascript">
    document.getElementsByTagName('iframe')[0].src = "/pdfjs/web/viewer.html?file=" + encodeURIComponent('${finalUrl}');
    document.getElementsByTagName('iframe')[0].height = document.documentElement.clientHeight - 10;
    /**
     * 页面变化调整高度
     */
    window.onresize = function () {
        var fm = document.getElementsByTagName("iframe")[0];
        fm.height = window.document.documentElement.clientHeight - 10;
    }

    function goForImage() {
        var url = window.location.href;
        if (url.indexOf("officePreviewType=pdf") != -1) {
            url = url.replace("officePreviewType=pdf", "officePreviewType=image");
        } else {
            url = url + "&officePreviewType=image";
        }
        window.location.href = url;
    }
</script>

</html>