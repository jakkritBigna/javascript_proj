<?php
session_start();
$i=$_GET['i'];
if(isset($_SESSION["cart"])){
    $_SESSION["cart"] = null;
}
?>
<script>
    window.alert("นำสินค้าออกจากตระกร้าเรียบร้อย");
    window.location.replace("Show_Product1.php");
</script>  