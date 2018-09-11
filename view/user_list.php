<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <style type="text/css">
       body {margin: 0 auto;text-align: center;}
       #main {height: 100%;width: 500px;border: 10px solid  #000;margin: 0 auto;}
       #users {border: 1px solid red;width: 100%;height: 100%;}
    </style>
</head>
<body>
 <form name="myform" id="myform" method="post">
   <div id="main">
       <table id="users">
         <tr>
             <th>ID</th>
             <th>姓名</th>
             <th>性别</th>
             <th>权限</th>
             <th>注册时间</th>
             <th>操作</th>
         </tr>
          <?php 
              if(!empty($users)){
              $sex = ['w'=>'女','m'=>'男','x'=>'未知'];
              $auth = [1=>'超级管理员','普通管理员','普通会员'];
              foreach($users as $k=>$v){
          ?>
          <tr>
              <td><?php echo $v->uid; ?></td>
              <td><?php echo $v->uname; ?></td>
              <td><?php echo $sex[ $v->sex ]; ?></td>
              <td><?php echo $auth[ $v->auth ]; ?></td>
              <td><?php echo date('Y-m-d H:i:s',$v->regtime); ?></td>
              <td><a href="./index.php?c=user&a=listone">控制器</a></td>
          </tr>
          <?php
              }
              }
          ?>
    	</table>
   </div>
  </form>
	
</body>
</html>