<?php
     
     session_start();//开启全局变量
     date_default_timezone_set('PRC');//设置全局时间
     
     if(empty($_GET['c'])){
         $_GET['c'] = 'user';
     }
     if(empty($_GET['a'])){
         $_GET['a'] = 'index';
     }
     
     require "./controller/{$_GET['c']}.php";
     
     $_GET['a']();
     
?>