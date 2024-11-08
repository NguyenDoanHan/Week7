<?php
class Item  extends Db{
    public function getNewItems($start,$count){
        $sql = self::$connection->prepare("SELECT * FROM `items` ORDER BY `created_at`  
        DESC  LIMIT    ?,?");
        $sql ->bind_param("ii",$start,$count);
        $sql -> execute();
        $items = array();
        $items = $sql ->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
}
?>