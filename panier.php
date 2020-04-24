 
 
 
 <?php
 class Panier
{

    private $dbConn;

    private $ds;

    function __construct()
    {
        require_once "db/dbconn.php";
        $this->ds = new dbconn();
    }

    function emptyPanier()
    {
        $query = "DELETE FROM user_carts WHERE customerid = ?";
        $paramType = "i";
        $paramArray = array(
            $_SESSION["customerid"]
        );
        $insertId = $this->ds->insert($query, $paramType, $paramArray);
        return $insertId;
    }

    function setPanier()
    {

        if (!empty($_SESSION["customerid"])) {

            if (!empty($_SESSION["cart"])) {
                $this->emptyPanier();
                $serialized_cart = serialize($_SESSION["cart"]);
                $query = "INSERT INTO user_carts (customerid, user_cart) VALUES (?, ?)";
                $paramType = "is";
                $paramArray = array(
                    $_SESSION["customerid"],
                    $serialized_cart
                );
                $insertId = $this->ds->insert($query, $paramType, $paramArray);

                return $insertId;
            }
        }
        return;
    }

    function getPanier()
    {
        if ($_SESSION["customerid"]) {
            $query = "SELECT * from user_carts WHERE customerid = ?";
            $paramType = "i";
            $paramArray = array($_SESSION["customerid"]);
            try {
                $cartResult = $this->ds->select($query, $paramType, $paramArray);
            } catch (\Throwable $th) {
                throw $th;
            }
            $cart = unserialize($cartResult[0]["user_cart"]);

            if (!empty($_SESSION["user_cart"])) {
                $_SESSION["cart"] = array_merge($_SESSION["cart"], $cart);
                $this->emptyPanier();
                $this->setPanier();
            } else {
                $_SESSION["cart"] = $cart;
            }
            return true;
        }
    }

    function getPanierProducts($panier)
    {
        $products = array();
        require_once("Product1.php").

        $productObject = new Product();
        foreach ($panier as $key => $value) {
            # code...
            array_push($products, $productObject->getProductByCode($panier[$key]["code"]));
        }
        return $products;
    }
}