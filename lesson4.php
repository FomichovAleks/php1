<?
$dir = 'img/';
$images = scandir($dir);
for ($i = 0; $i < count($images); $i++) {
  if ($images[$i] != '.' && $images[$i] != '..') {
    echo '<a href="' . $dir . $images[$i] . '" target="_blank"><img src=' . $dir . $images[$i] . ' style="width: 200px;"></a>';
  }
};

echo '<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>Lesson 4</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="page-header">
        <h1>Галерея</h1>
    </div>

    <div class="page-header">
        <h3>Загрузка нового изображения</h3>
    </div>

    <form action="" enctype="multipart/form-data" method="post">
        <input type="file" name="file"/>
        <input type="submit" value="Загрузить"/>
    </form>

    

</div>
<script src="./js/bootstrap.min.js"></script>
</body>
</html>'
?>