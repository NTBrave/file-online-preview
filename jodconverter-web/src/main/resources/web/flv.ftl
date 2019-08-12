<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>多媒体文件预览</title>
    <style type="text/css">
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
<style>
    body{background-color: #262626}
    .m{ margin-left: auto; margin-right: auto; width:1024px; margin-top: 100px; }
</style>
<body>
<div class="m">
    <video width="1024" id="videoElement"></video>
</div>
<script src="js/flv.min.js"></script>
<script>
    if (flvjs.isSupported()) {
        var videoElement = document.getElementById('videoElement');
        var flvPlayer = flvjs.createPlayer({
            type: 'flv',
            url: '${mediaUrl}'
        });
        flvPlayer.attachMediaElement(videoElement);
        flvPlayer.load();
        flvPlayer.play();
    }
</script>
</body>

</html>
