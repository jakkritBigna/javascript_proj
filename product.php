<!DOCTYPE html>
<html>
    <head>
        <h1>Vans_Product</h1>
    </head>
    <body>
        
        <?php
           $Myproduct = [
            [
            "id" => 01, "name"=> "Vans_ตาราง", "price"=> 1990,
            "img"=> "https://i8.amplience.net/i/jpl/jd_VN000EYEBWW-W_a?qlt=92&w=750&h=531&v=1&fmt=auto"
            ],
           [
            "id"=> 02, "name"=> "Vans x Pretty Guardian", "price"=> 1800,
            "img"=> "https://i8.amplience.net/i/jpl/jd_VN0005VZ447_a?qlt=92&w=750&h=531&v=1&fmt=auto"
           ],
           [
            "id"=> 03, "name"=> "Vans Eco Theory Authentic", "price"=> 2600,
            "img"=> "https://i8.amplience.net/i/jpl/jd_VN0A5KRDARG_a?qlt=92&w=750&h=531&v=1&fmt=auto"
           ],
           [
            "id"=> 04, "name"=> "Vans Eco Theory Sk8-Hi Tapered", "price"=> 3400,
            "img"=> "https://i8.amplience.net/i/jpl/jd_VN0A4U16ARG_a?qlt=92&w=750&h=531&v=1&fmt=auto"
           ],
           [
            "id"=> 05, "name"=> "Vans x Pretty Guardian Sailor Moon Patchwork", "price"=> 3500,
            "img"=> "https://i8.amplience.net/i/jpl/jd_VN0005U7448_a?qlt=92&w=750&h=531&v=1&fmt=auto"
           ],
           [
            "id"=> 06, "name"=> "Vans MoMA x ComfyCush Old Skool", "price"=> 1800,
            "img"=> "https://cdn.shopify.com/s/files/1/0603/3031/1875/products/main-square_8685e014-54a9-4716-930d-c91ba93f8843_1296x.jpg?v=1656238670"
           ],
           [
            "id"=> 07, "name"=> "Vans MOCA x Authentic ", "price"=> 3700,
            "img"=> "https://i.pinimg.com/564x/e6/43/55/e64355599b08a9ffd984ab0ccdc82379.jpg"
           ],
           [
            "id"=> 11, "name"=> "Vans House of Terror Old Skool ", "price"=> 4800,
            "img"=> "https://i.ebayimg.com/images/g/fZ8AAOSwyx9iJgZj/s-l500.jpg"
           ],
           [
            "id"=> 12, "name"=> "VANS SK8 HI MOCA FRANCES STARK BLACK SNEAKERS ", "price"=> 4990,
            "img"=> "https://cf.shopee.co.th/file/d0af11c2e3ef077ec5e055140d6ce920"
           ],
           [
            "id"=> 10, "name"=> "Vans Save Our Planet x Era 'White Black'  ", "price"=> 5900,
            "img"=> "https://cdn.shopify.com/s/files/1/0603/3031/1875/products/main-square_d654f16c-95c5-44d7-a91e-21188dd2c161_732x.jpg?v=1656272662"
           ],
        ];
        ?>

        <table width=1000, border=2><tr align=center bgcolor=#b042ff>
                <th>id</th>
                <th>name</th>
                <th>price</th>
                <th>img</th>
                </tr>

        <?php foreach($Myproduct as $value){
             $r = rand(0,256);
             $g = rand(0,256);
             $b = rand(0,256);
             $Style = " style='color:rgb($r,$g,$b)' ";
            ?>
            <tr align=center bgcolor=#FFFDD0>  
                <td <?=$Style?>><?=$value['id']?></td>
                <td <?=$Style?>><?=$value['name']?></td>
                <td <?=$Style?>><?=$value['price']?></td>
                <td <?=$Style?>><img width=500 height=400 src = <?=$value['img']?> ></td>
                </tr>
        <?php } ?>

        
    </body>
    
</html> 