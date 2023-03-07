<?php
include 'connection.php';

    $material_name= null;
    $quantity = null;
    $cust_name = null;
    $unique_id = null;
    $phase = null;

if($_SERVER['REQUEST_METHOD']=='POST'){

    $material_name = $_POST['material_name'];
    $quantity = $_POST['quantity'];
    $cust_name = $_POST['cust_name'];
    $unique_id = $_POST['unique_id'];
    $phase = $_POST['phase'];
}

if($_SERVER['REQUEST_METHOD']=='GET'){

    $material_name = $_GET['material_name'];
    $quantity = $_GET['quantity'];
    $cust_name = $_GET['cust_name'];
    $unique_id = $_GET['unique_id'];
    $phase = $_GET['phase'];
}

$sql= "INSERT INTO `material_data`( `material_name`, `quantity`, `customer_name`,`unique_id`,`phase`) VALUES (
        '$material_name',
        '$quantity',
        '$cust_name',
        '$unique_id',
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
