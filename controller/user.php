<?php

     require "./model/db.php";
     
    function index()
    {
       $users = select('shop_users','');
       require "./view/user_list.php";
    }
    
   function listone()
   {
   	 $sql = "where uid = 1" ;
   	 $one = select('shop_users',$sql);
   	 require "./view/user_one.php";
   }