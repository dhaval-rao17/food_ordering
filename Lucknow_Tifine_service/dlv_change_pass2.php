<?php
include 'dlv_navigation.php';
$user=$_SESSION['delivery'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
        .div1{
            padding:40px 70px;
            height:600px;
            background-image:url(img/p1.jpg);
            background-size:100% 100%;
        }
        .div2{
            padding:40px 20px;
            border:5px solid;
            border-radius:5px;
            width:45%;
            background-color:rgba(0,0,0,.286);


        }
        .input{
                height:30px;
                padding:20px 40px;
                width:80%;
                border-radius:10px;
                font-size:100%;
                background-color:lightgray;
        }
        .btn{
            padding:20px 40px;
            margin-left:200px;
            background-color:green;
            color:white;
            border-radius:8px;
            font-size:20px;

        }
</style>
</head>
<body>
    <div class="div1">

        <div class="div2">
            <h1 style="font-size:30px;color: orange;font-style:arabic;cellspacing:2;">Change Password</h1>
            <form method="post" onsubmit="confirmpass()">
                <input type="password" name="p" placeholder="Enter Your Old Password" require class="input">
                <br>
                <br>
                <input type="password" name="np" placeholder="Enter Your New Password" require class="input" id="p">
                <br>
                <br>
                <input type="password" name="cnp" placeholder="Confirm Password" require class="input" id="cp">
                <br>
                <br>
                <input type="submit" name="save" class="btn">
                <br>
    </form>
</div>
<script type="text/javascript">
    function confirmpass(){
        let p=document.getElementById('p').value
        let cp=document.getElementById('cp').value
        if(p!=cp){
            alert("password and confirm password does not match!")
        }else{

        }
        
    }
    </script>
</div>
</body>
</html>
<?php
if(isset($_POST['save'])){
    include 'dbcon.php';
    $op=$_POST['p'];
    $np=$_POST['np'];
    $cp=$_POST['cnp'];

    $sql="select * from delivery_boy where dusename='$user' and pass='$op'";

    $q=mysqli_query($con,$sql);
    if($r=mysqli_fetch_assoc($q)){
        $db_pass=$r['pass'];
        if($op==$db_pass){
            $s2="update delivery_boy set pass='$np' where dusename='$user'";
            mysqli_query($con,$s2);
        }
        echo "hello";
    }


}


?>