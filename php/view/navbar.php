<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    
        <div class="navbar-brand">
            <a href="index.php" class="navbar-brand">My Shoe Shop</a>
            <button type="button" class="navbar-toggler" data-toggle="collapse"><span class="navbar-toggle"></span></button>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
    <?php
            require_once('model/database.php');
            require_once('model/category_db.php');
            
            $categories = get_categories();
            foreach($categories as $category) :
                $name = $category['categoryName'];
                $id = $category['categoryID'];
                $url = $app_path . 'catalog?category_id=' . $id;
        ?>
        <li class="nav-item">
            <a class="nav-link" href="<?php echo $url; ?>">
               <?php echo htmlspecialchars($name); ?>
            </a>
        </li>
        <?php endforeach; ?>
        
</ul>
        </div>
    
</nav>