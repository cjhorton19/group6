<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>My Shoe Shop</title>
    <link rel="stylesheet" type="text/css"
          href="<?php echo $app_path ?>main.css">
</head>

<body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="<?php echo $app_path; ?>">Shoe Shop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="<?php echo $app_path; ?>">Home</a>
            </li>
            <?php
            require_once('model/database.php');
            require_once('model/category_db.php');

            $categories = get_categories();
            foreach ($categories as $category) :
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
            <a class="nav-item nav-link" href="<?php echo $app_path . 'cart'; ?>">Cart</a>
        </ul>
    </div>


</nav>


