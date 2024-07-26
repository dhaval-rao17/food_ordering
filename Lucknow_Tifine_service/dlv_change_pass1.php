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
            background-color:gray;
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
        <form action="" method="POST" onsubmit="confirmpass()">

            <table width="600" border="2"cellpadding="30" background-color="gray">
         
                <tr><td>Enter Old Password</td><td><input type="password" name="opswd"></td></tr>
                <tr><td>Enter New Password</td><td><input type="password" name="npswd" id="p"></td></tr>
                <tr><td>Enter Confirm Password</td><td><input type="password" name="cpswd"  id="cp"></td></tr>
                <tr><td><input type="submit" name="save" value="submit"></td><td><input type="reset"name="reset"></td></tr>
            </table>
        </form>
    </center>
</div>
<script>
    function confirmpass(){
       let p=document.hetElementById('p').value
       let cp=document.hetElementById('cp').value
       if(p!=cp)
       aleart("Password and confirm password does not match!")
    }else{

    }
</script>
</body>
</html>
<?php
if(isset($_POST['save'])){
    include 'dbcon.php';
    $op=$_POST['opswd'];
    $np=$_POST['npswd'];
    $cp=$_POST['cpswd'];

    $sql="select * from delivery_boy where dusename='$user' and pass='$op'";

    $q=mysqli_query($con,$sql);
    if($r=mysqli_fetch_assoc($q)){
        $db_pass=$r['pass'];
        if($op==$db_pass){
            $s2="update delivery_boy set pass='$np' where dusename='$user'";
            mysqli_query($con,$s2);
        }
        

    }
}
?>