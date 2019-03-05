<?php include '../view/header.php'; ?>
<section>
    <div class="container">
        <h1 class="h1"><?php echo $current_category['categoryName']; ?></h1>
        <div class='btn-group' method='post'>
            <button class='btn btn-secondary'>
                <input type='radio' name='name' id='option1' autocomplete="off">Name
            </button>
            <button class='btn btn-secondary'>
                <input type='radio' name='price' id='option2' autocomplete="off">Price
            </button>
        </div>
        
                            
        <div class="row">

            <?php if (count($products) == 0) : ?>
                <ul><li>There are no products in this category.</li></ul>
            <?php else: ?>
                <?php foreach ($products as $product) : ?>
                    <div class="col-md-4 col-sm-8">
                        <div class="panel panel-primary">
                            <div class="panel-heading"><?php echo $product['productName'] ?></div>
                            <div class="panel-body">
                                <a href="?action=view_product&amp;product_id=<?php echo $product['productID']; ?>">
                                    <img src="../images/<?php echo htmlspecialchars($product['productCode']); ?>.jpg" class="img-responsive" style="width:100%" alt="Image">
                                </a>

                            </div>

                        </div>
                    </div>
                <?php endforeach; ?>

            <?php endif; ?>

        </div>
    </div>
</section>
<?php include '../view/footer.php'; ?>