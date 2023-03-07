<?php
include 'connection.php';

if($_SERVER['REQUEST_METHOD']=='POST'){

	$name = $_POST['user_name'];
	$email= $_POST['email'];
    	$password= $_POST['password'];
    	$phone = $_POST['phone'];
	$phase= $_POST['phase'];
}
$sql= "INSERT INTO `user_data`( `user_name`, `email`, `password`,`phone`,`phase`) VALUES (
	'$name', 
       '$email', 
       '$password',
       '$phone',
       '$phase'
        
)";

$result=mysqli_query($conn,$sql);

if($result)
    {
    
    $response = array("response"=>"success");
    echo json_encode($response);
    }
else
    {
    	$response = array("response"=>"failure");
    	echo json_encode($response);
    }

?>
