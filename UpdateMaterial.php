<?php
include 'connection.php';

    $material_name= null;
    $quantity = null;
    $cust_name = null;
    $unique_id = null;
    $phase = null;
    $error = null;

if($_SERVER['REQUEST_METHOD']=='POST'){

    $unique_id = $_POST['unique_id'];
    $phase = $_POST['phase'];
    $error = $_POST['error'];
}

if($_SERVER['REQUEST_METHOD']=='GET'){
    $material_name = $_GET['material_name'];
    $quantity = $_GET['quantity'];
    $unique_id = $_GET['unique_id'];
    $phase = $_GET['phase'];
    $error = $_GET['error'];

}

$sql="UPDATE `material_data` SET `phase`='$phase',`error`='$error'
    WHERE unique_id =$unique_id";


$result=mysqli_query($conn,$sql);


if($result)

        $sql_select="SELECT * FROM `material_data` WHERE `unique_id`='$unique_id'";
        $result_select=mysqli_query($conn,$sql_select);

        $result_count=mysqli_num_rows($result_select);

        if($result_count>0)
        {
            while($row=mysqli_fetch_array($result_select))
            {
                $material_name=$row['material_name'];
                $quantity=$row['quantity'];
                $customer_name=$row['customer_name'];
                $unique_id=$row['unique_id'];
                $phase=$row['phase'];
                $error=$row['error'];


             $MaterialDetails=array(
                "unique_id" =>$unique_id,
                                "customer_name" =>$customer_name,
                                "quantity" => $quantity,
                                "material_name" => $material_name,
                                "phase" => $phase,
                                "error"=>$error

                                );


        }



}

    if($result_count)
    {
       $response=array("response"=> $MaterialDetails);
       echo json_encode($response);

    }else
    {
        $response=array("response"=> "failure");
        echo json_encode($response);
    }


?>
