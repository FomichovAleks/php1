<?php
include_once "../models/db_goods.php";
include_once "../modules/cart.php";
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Интернет-магазин столов и стульев</title>
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
      <h1>Интернет-магазин столов и стульев</h1>
     
      <?php
        $goods = goods_all($link);
        if($goods){
          foreach ($goods as $good){
           
      ?>
          <form class="item" method="POST" action="">
            <a href="item.php?id=<?=$good['id']?>">
            <img src="<?=$good['small_src']?>" alt="<?=$good['name']?>" title="<?=$good['name']?>"></a>
            <h3 class="item-name"><a href="item.php?id=<?=$good['id']?>"><?=$good['name']?></a></h3>
            <p class="price"><?=$good['price']?> руб.</p>
            <!-- <p class="add-to-basket"> -->
            <p>
              <!-- <label class="add-to-basket" for='submit'>Отложить</label> -->
              <!-- Скрытое поле которое заполняется id товара -->
              <input type="number" name="id" value='<?=$good['id']?>'>
              <br>
              <input type="submit" id='submit' value='Отложить'>
              <select name="quantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
              </select>
                <!-- <a href="#" title="Добавить в корзину">Купить</a> -->
            </p>
          </form>
        <?}
        }?>
      </div>
      <footer>
        <? include "../templates/footer.php"; ?>
      </footer>
    </div>
  </body>
</html>