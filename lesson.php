<?php
    $a = 5;
    $b = '05';
    var_dump($a == $b);         // Почему true? - потому что сравнение == не сравнивает типы данных, только значения
    
    var_dump((int)'012345');     // Почему 12345? - Потому что int - преобразует в число, строка 012345 будет равна 12345
    
    var_dump((float)123.0 === (int)123.0); // Почему false? - int - целое число, float - число с запятой. Сравнение строгое, сравниваются и значения и тип данных, поэтому false
    
    var_dump((int)0 === (int)'hello, world'); // Почему true? - строка не ноль, значит значение - true.
?>