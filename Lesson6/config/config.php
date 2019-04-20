<?php
define("MYSQL_SERVER","127.0.0.1");
define("MYSQL_USER","alex");
define("MYSQL_PASSWORD","12345");
define("MYSQL_DB","alex");

define("DIR_BIG","uploads/");
define("DIR_SMALL","uploads/mini/");
@mkdir(DIR_BIG, 0777);
@mkdir(DIR_SMALL, 0777);
$cols = 3;
$k = 1;
$message = '';
