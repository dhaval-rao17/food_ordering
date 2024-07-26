<?php
include 'dlv_navigation.php';
$user=$_SESSION['delivery'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>
    <style>
        body{
            background-image:url('img/p1.jpg')
        }
        table{
            background-color:;
        }
    </style>
</head>
<body>
<div>
    <center>
        <br>

        <br>
        <br>
        
        <h1 style="font-size:30px;color: orange;font-style:arabic;cellspacing:2;">Change Password</h1>
         <form action="" method="POST">

            <table width="600" border="2" cellpadding="30" background-color="white">
          
                <tr><td>Enter Old Password</td><td><input type="password" name="opswd" required></td></tr>
                <tr><td>Enter New Password</td><td><input type="password" name="npswd" required></td></tr>
                <tr><td>Enter Confirm Password</td><td><input type="password" name="cpswd" required></td></tr>
                <tr><td><input type="submit" name="change_password" value="submit"></td><td><input type="reset"name="reset"></td></tr>
            </table>
        </form>
    </center>
</div>
</body>
</html>
<?php
        include 'dbcon.php';
        if(isset($_POST['change_password'])){
            $oldPassword=$_POST['opswd'];
            $newpassword=$_POST['npswd'];
            $conpassword=$_POST['cpswd'];
            $sql="select pass from delivery_boy where dusename='$user'";
            $res=mysqli_query($con,$sql);
            $row=mysqli_fetch_assoc($res);
            if(password_verify($oldPassword,$row['pass'])){
                if($conpassword ==''){
                    $error[]='Please confirm the Password.';
                }
                if($newpassword != $conpassword){
                    $error[] ='Password does not match';

                }
                if(!isset($error)){
                    $options=array("cost"=>4);
                    $newpassword = password_hash($newpassword,PASSWORD_BCRYPT,$options);
                    $result = mysqli_query($con,"update delivery_boy set password='$newpassword' where dusename='$user'");
                    if($result){
                        header("location:delivery_profile.php?password updated");

                    }
                    else{
                        $error[]='Something went Wrong';

                    }
                }

            }
            else{
                $error[]='Current password does not match.';
            }
        }
        if(isset($error)){
            foreach($error as $error){
                echo '<p class="errmsg">'.$error.'</p>';
            }
        }
        ?>