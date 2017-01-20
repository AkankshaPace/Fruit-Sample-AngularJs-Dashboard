<?php
require_once 'config.php';
$data = json_decode(file_get_contents("php://input"));
$where = " and 1=1";
$fruit = $_GET["fruit"];
$fruits = substr($fruit, 2, -2);
$fruits = str_replace('"',"'", $fruits);
if(strlen($fruits)>0)
	$where .= " and f.fruitName IN ('". $fruits. "')";

$country = $_GET["country"];
$countries = substr($country, 2, -2);
$countries = str_replace('"',"'", $countries);
if(strlen($countries)>0)
	$where .= " and c.countryName IN ('". $countries. "')";

$region = $_GET["region"];
$regions = substr($region, 2, -2);
$regions = str_replace('"',"'", $regions);
if(strlen($regions)>0)
	$where .= " and c.continent IN ('". $regions. "')";

$fruitCls = $_GET["fruitClassification"];
$fruitClss = substr($fruitCls, 2, -2);
$fruitClss = str_replace('"',"'", $fruitClss);
if(strlen($fruitClss)>0)
	$where .= " and f.fruitClassification IN ('". $fruitClss. "')";

$query = "select DATE_FORMAT(s.createdAt,'%b') as mon, (s.revenue - (s.quantity * s.cost)) as revenue from bloomberg.sales s, bloomberg.fruits f, bloomberg.country c where c.ID = s.countryOfcultivationID and s.fruitID = f.ID" .$where. " group by Month(createdAt)";

	$result = $con->query($query);
	$data = array();
	$i=0;
	if($result->num_rows > 0) {
		while($row = $result->fetch_object()) {
			$data[$i++] = $row;
		}
	}
	else{
		$data[] = null;
	}
	echo json_encode($data, JSON_PRETTY_PRINT);
	//echo $data;