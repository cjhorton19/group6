<?php
require_once('../util/main.php');
require_once('util/secure_conn.php');
require_once('util/validation.php');

require_once('model/cart.php');
require_once('model/product_db.php');
require_once('model/order_db.php');
require_once('model/customer_db.php');
require_once('model/address_db.php');?>

<main>
    <h1>Order Confirmation</h1>
    <table id="cart">
        <tr id="cart_header">
            <th class="left" >Item</th>
            <th class="right">Price</th>
            <th class="right">Quantity</th>
            <th class="right">Total</th>
        </tr>
        <?php foreach ($cart as $product_id => $item) : ?>
            <tr>
                <td><?php echo htmlspecialchars($item['name']); ?></td>
                <td class="right">
                    <?php echo sprintf('$%.2f', $item['unit_price']); ?>
                </td>
                <td class="right">
                    <?php echo $item['quantity']; ?>
                </td>
            </tr>
        <?php endforeach; ?>
        <tr id="cart_footer">
            <td colspan="3" class="right"><b>Subtotal</b></td>
            <td class="right">
                <?php echo sprintf('$%.2f', $subtotal); ?>
            </td>
        </tr>
            <tr>
            <td colspan="3" class="right"><b>Total</b></td>
            <td class="right">
                <?php echo sprintf('$%.2f', $total); ?>
            </td>
        </tr>
</table>
</main>
<?php include '../view/footer.php'; ?>