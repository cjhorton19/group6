<?php include 'view/header.php'; ?>
<?php include 'view/navbar.php'; ?>
<main class="nofloat">
    <h1>Featured products</h1>
    <p>We have a great selection of the latest fashionable shoes.
    </p>
    <table>
    <?php foreach ($products as $product) :
        // Get product data
        $list_price = $product['listPrice'];
        
        // Calculate unit price
        $unit_price = $list_price;
      
    ?>
        <tr>
            <td class="product_image_column" >
                <img src="images/<?php echo htmlspecialchars($product['productCode']); ?>_s.png"
                     alt="&nbsp;">
            </td>
            <td>
                <p>
                    <a href="catalog?product_id=<?php echo
                           $product['productID']; ?>">
                        <?php echo htmlspecialchars($product['productName']); ?>
                    </a>
                </p>
                <p>
                    <b>Your price:</b>
                    $<?php echo number_format($unit_price, 2); ?>
                </p>
            </td>
        </tr>
    <?php endforeach; ?>
    </table>
</main>
<?php include 'view/footer.php'; ?>