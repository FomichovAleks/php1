<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Контакты</title>
    <link rel="stylesheet" href="css/styles.css" type="text/css" media="all">
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
</head>
<body>
<div id="container">
    <? include "../templates/header.php"; ?>
    <div class="leftblock">
        <? include "../templates/menu.php"; ?>
    </div>
    <div class="content">
        <h1>Наш адрес:</h1>
        <p><b>Телефон:</b> +79780581681</p>
        <p><b>Адрес:</b> г. Феодосия</p>
        <p><b>Email:</b> webmastergoogl@gmail.com</p>
        <p>
		В нащих салонах мебели сегодня можно увидеть большое разнообразие этого предмета. 
		Они отличаются не только конструкцией и материалами, но и функциональностью, типом отделки, предназначением и другими особенностями. 
		Каждый человек может выбрать среди огромного количества моделей, то, что придётся ему по вкусу.
		</p>
        <div class="map">
<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Abfc1118b7012b09a9377516962fe8c9a3fa5cb21423822c3242822ca7ad82a85&amp;width=800&amp;height=396&amp;lang=ru_RU&amp;scroll=true"></script>        </div>
        <hr>
        <h2>Напишите нам:</h2>
        <form action="#" class="form-item" method="post">
           <p>
               <label for="display-name">Имя:</label>
               <input type="text" id="display-name" name="display-name" size="30" maxlength="20" placeholder="Введите Имя" required>
            </p>
            <p>
               <label for="display-mail">Email:</label>
               <input type="text" id="display-mail" name="display-mail" size="30" maxlength="20" placeholder="Введите Email" required>
            </p>
            <p>
               <label for="display-text">Тема:</label>
               <textarea id="display-text" cols="37" rows="10" maxlength="400"  required></textarea>
            </p>
            <p><input type="submit"></p>
        </form>
    </div>
    <footer>
        <? include "../templates/footer.php"; ?>
    </footer>
</div>
</body>
</html>