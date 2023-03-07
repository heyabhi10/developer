<?php
include 'connection.php';

    $email= null;
    $password = null;


if($_SERVER['REQUEST_METHOD']=='POST'){

    $email = $_POST['email'];
    $password = $_POST['password'];
}

if($_SERVER['REQUEST_METHOD']=='GET'){
    $email = $_POST['email'];
    $password = $_POST['password'];
}

$sql="UPDATE `user_data` SET `password`='$password'
    WHERE `email`='$email'";


$result=mysqli_query($conn,$sql);
if($result)
    {
    $response = array("response"=>"success");
    echo json_encode($response);

    }else
    {
        $response=array("response"=> "failure");
        echo json_encode($response);
    }


?>
