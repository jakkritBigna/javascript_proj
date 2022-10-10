<?php
session_start();
$servername="localhost";
$username="root";
$password="12345678";
$dbname="shop";
$per_page=10;
if(isset($_GET["page"])) $start_page=$_GET["page"]*$per_page;
else $start_page=0;
$con=mysqli_connect($servername,$username,$password,$dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
echo "Connect mysql successfully!";
$sql="SELECT * FROM product";
$result=mysqli_query($con,$sql);
$numrow=mysqli_num_rows($result);

echo "<br>".$numrow." Records<br>";

$before = ($start_page/$per_page)-1;
if ($before <= -1){
    $before = $start_page/$per_page;
}
echo "<a href='Show_Product1.php?page=$before'><</a>";

for($i=0;$i<ceil($numrow/$per_page);$i++)
    echo "<a href='Show_Product1.php?page=$i'>[".($i+1)."]</a>";
$num_rows = $row[0];
$num_page = ceil($num_rows/$per_page);
$after = ($start_page/$per_page)+1;
if ($start_page/$per_page>=$num_page-1){
    $after = $start_page/$per_page;
}
echo "<a href='Show_Product1.php?page=$after'>></a>";

$sql="SELECT * FROM product LIMIT $start_page,$per_page";
$result=mysqli_query($con,$sql);
if(mysqli_num_rows($result)>0){
    
    echo "<table border=1><tr><th>id</th><th>name</th><th>description</th><th>price</th><th></th></tr>";
    while($row=mysqli_fetch_assoc($result)){
        $url_id = $row["image"];
        echo "<tr><td style='text-align: center;'>".$row["id"]."</td><td style='text-align: center;'>".$row["name"]."<br>"."<img src='$url_id' style='width:350px;height:350px;'>"."</td><td style='text-align: center;'>"; 
        echo $row["description"]. "</td><td style='text-align: center;'>". $row["price"]."</td></tr>";
    //echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."<br>"."</td><td>";
    //echo $row["description"]."</td><td>".$row["price"]."</td>";
    echo "<td><a href='Add_Product1.php?id=".$row["id"]."'>ใส่ตระกร้า</a></td></tr>";
    }
    echo "</table>";
}else{
    echo "0 results";
}
if(isset($_SESSION["cart"])){
$total=0;
echo "<h1>ตระกร้าสินค้า</h1>";
echo "<table><tr><th>ลำดับ</th><th>id</th><th>name</th><th>description</th><th>price</th></tr>";
    for($i=0;$i<count($_SESSION["cart"]);$i++)
    {
        $item=$_SESSION["cart"][$i];
        echo "<tr><td>".($i+1)."</td>";
        echo "<td>".$item['id']."</td>";
        echo "<td>".$item['name']."</td>";
        echo "<td>".$item['description']."</td>";
        echo "<td>".$item['price']."</td>";
        echo "<td><a href='del_cart.php?i=".$i."'>";
        echo "<font color='red'>x</font></a><td></tr>";
        $total+=$item['price'];
    }

echo "</table>";
echo "<h1>ราคาสิ้นค้า $total บาท</h1>";
echo "<h2><a href='del_all.php'>ลบสิ้นค้าทั้งหมด</a></h2>";
echo "<h2><a href='checkout.php'>สั่งซื้อ</a></h2>";
}
mysqli_close($con);
?>