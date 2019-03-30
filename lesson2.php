1. Объявить две целочисленные переменные $a и $b и задать им произвольные начальные значения. Затем написать скрипт, который работает по следующему принципу:

    если $a и $b положительные, вывести их разность;
    если $а и $b отрицательные, вывести их произведение;
    если $а и $b разных знаков, вывести их сумму;

ноль можно считать положительным числом.
<?php
 
$a = 10;
$b = 7;

if($a >= 0 && $b >= 0)
    echo $a - $b;
elseif ($a < 0 && $b < 0)
    echo $a * $b;
elseif (($a < 0 && $b >= 0) || ($a >= 0 && $b < 0))
    echo $a + $b;
 
?>

2. Присвоить переменной $а значение в промежутке [0..15]. С помощью оператора switch организовать вывод чисел от $a до 15.
<?php
    $a = 0;
    switch ($a)
    {
        case 0:
            echo ($a++ );
        case 1:
            echo ($a++ );
        case 2:
            echo ($a++ ) ;
        case 3:
            echo ($a++ );
        case 4:
            echo ($a++ );
        case 5:
            echo ($a++ ) ;
        case 6:
            echo ($a++ );
        case 7:
            echo ($a++ );
        case 8:
            echo ($a++ );
        case 9:
            echo ($a++);
        case 10:
            echo ($a++ );
        case 11:
            echo ($a++ );
        case 12:
            echo ($a++ ) ;
        case 13:
            echo ($a++ );
        case 14:
            echo ($a++ );
        case 15:
            echo ($a++ ) ;
            echo ($a);
        break;
 
    }
?>

3. Реализовать основные 4 арифметические операции в виде функций с двумя параметрами. Обязательно использовать оператор return.
<?php

	$a = rand(1,10);
	$b = rand(1,10);
	$c = "<br>";
		echo "a = $a<br>b = $b<hr>";
		function addition($a, $b) {
		return $a + $b;
}
	function subtraction($a, $b) {
    return $a - $b;
}
	function multiplication($a, $b) {
    return $a * $b;
}
	function division($a, $b) {
    return $a / $b;
}
echo "a + b = $a + $b = " . addition($a, $b) . $c;
echo "a - b = $a - $b = " . subtraction($a, $b) . $c;
echo "a * b = $a * $b = " . multiplication($a, $b) . $c;
echo "a / b = $a / $b = " . division($a, $b) . $c;
?>

4. Реализовать функцию с тремя параметрами: function mathOperation($arg1, $arg2, $operation), где $arg1, $arg2 – значения аргументов, 
$operation – строка с названием операции. В зависимости от переданного значения операции выполнить одну из арифметических операций 
(использовать функции из пункта 3) и вернуть полученное значение (использовать switch).
<?php

	$arg1 = rand(0,9);
	$arg2 = rand(0,9);
	$operations = array("+", "-", "*", "/");
	$operation = $operations[rand(0,3)];
	echo "arg1 = $arg1<br>arg2 = $arg2<br>operation = $operation<hr>";
	function addition($a, $b) {
    return $a + $b;
}
	function subtraction($a, $b) {
    return $a - $b;
}
	function multiplication($a, $b) {
    return $a * $b;
}
	function division($a, $b) {
    return $a / $b;
}
	function mathOperation($arg1, $arg2, $operation) {
    switch ($operation) {
        case "+":
            return addition($arg1, $arg2);
        case "-":
            return subtraction($arg1, $arg2);
        case "*":
            return multiplication($arg1, $arg2);
        case "/":
            return division($arg1, $arg2);
    }
}
	echo "arg1 $operation arg2 = $arg1 $operation $arg2 = " . mathOperation($arg1, $arg2, $operation);












