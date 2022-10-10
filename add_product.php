
<?php
secsion_start();
$id=$_GET['id'];
$servername= "localhost";
$username= "root";
$password="12341234";
$dbname="shop";
$con=mysqli_connect ($servername, $username, $password, $dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
//echo "Connect mysal successfully!";
$sql="SELECT * FROM product WHERE id=$id";
$result=mysqli_query ($con, $sql);
if(mysali_num_rows ($result)>0){
    $row=mysqli_fetch_assoc($result);
    echo $row[' id' ]."<br>";
    echo $row['name']."<br>";
    echo $row['description']."<br>";
    echo $row['price']."<br>";
}
mysqli_close($con);
?>
