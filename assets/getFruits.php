<?php
require_once 'config.php';
$where = " where 1=1 ";

if(isset($_GET["fruitClassification"])){
	$fruitCls = $_GET["fruitClassification"];
	$fruitClss = substr($fruitCls, 2, -2);
	$fruitClss = str_replace('"',"'", $fruitClss);

	if(strlen($fruitClss)>0)
		$where .= " and fruitClassification IN ('". $fruitClss. "')";
}

	$query = "SELECT distinct(fruitName) from bloomberg.fruits".$where."ORDER BY ID ASC";
	$result = $con->query($query);
	$data = array();
	if($result->num_rows > 0) {
		while($row = $result->fetch_object()) {
			$data[] = $row;
		}
	}
	else{
		$data[] = null;
	}
	 echo json_encode($data, JSON_PRETTY_PRINT);