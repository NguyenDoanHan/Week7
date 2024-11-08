<?php
class categories extends Db{
    public function getAllCate(){
        $sql = self::$connection->prepare("SELECT * FROM `categories`");
        $sql -> execute();
        $items = array();
        $items = $sql ->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function getNameById($id) {
        $sql = self::$connection->prepare("SELECT * FROM `categories` WHERE `id` = ?");
        $sql->bind_param("i", $id); // "i" means integer type
        $sql->execute();
        $items = $sql ->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
}
