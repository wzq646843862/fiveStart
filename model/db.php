<?php

    require "config.php";
        
    function connect()
    {
        //1.连接
        $link = @mysqli_connect(HOST,USER,UPWD,DBNAME) or die(mysqli_connect_error());

        //2.设置字符集
        mysqli_set_charset($link,'utf8');
        
        return $link;
    }
        /**
    * 功能: 查询符合条件的数据
    * 参数: $tblName 表名
    *       $where  要查询的条件 包括 where,order by, limit
    * 
    * 返回: 
    *
    */
    function select($tblName,$where='')
    {
        $link = connect();
    
        //3.SQL语句
        $sql = "select * from {$tblName} {$where}";
        
        //4.发达
        $res = mysqli_query($link,$sql);
        
        //5.语法检查
        if(!$res){
            die( mysqli_error($link) );
        }
    
        //6.判断结果集中记录的条数
        if( mysqli_num_rows($res)>0 ){
            //把结果集中所有的记录都取出来,放入$row数组中
            while($tmp= mysqli_fetch_object($res)){
                $row[]=$tmp;
            }
            return $row;   //只要返回这个数组,就肯定是true
        
        }else{
            return false;
        }

   }