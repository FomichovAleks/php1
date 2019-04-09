<!doctype html>
<html lang="ru">
<head>
<meta charset = "utf-8" >
	<title>Урок 3. Циклы и массивы</title>
</head>
<body>

<h1>Урок 3. Циклы и массивы. Задача 6.</h1>

<p>В имеющемся шаблоне сайта заменить статичное меню (ul - li) на генерируемое через PHP. 
Необходимо представить пункты меню как элементы массива и вывести их циклом. 
Подумать, как можно реализовать меню с вложенными подменю? Попробовать его реализовать.</p>

<h2>Меню сайта</h2>

<?php

$menu = array ("Главная", "Пункт 1" => array ("Подменю пункта 1", "Подменю пункта 2", "Подменю пункта 3"), "Главный пункта 2" => array ("Подменю пункта 2", "Подменю пункта 2", "Подменю пункта 2"), "Главный пункт 3");
echo "<ul>";
foreach ($menu as $count => $itemname) {
	// is_array
	if (gettype($itemname) == "array" ) {
		echo "<li>".$count."<ul>";
		foreach ($itemname as $submenu) {
			echo "<li>".$submenu."</li>";
		}
		echo "</ul>";
	}
	else echo "<li>".$itemname."</li>";
}
?>

</body>
</html>