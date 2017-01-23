<?php

require_once 'config.php';
$where = " where 1=1 ";

if(isset($_GET["region"])){
	$region = $_GET["region"];
	$regions = substr($region, 2, -2);
	$regions = str_replace('"',"'", $regions);

	if(strlen($regions)>0)
		$where .= " and continent IN ('". $regions. "')";
}

	$query = "SELECT distinct(countryName) from bloomberg.country".$where."ORDER BY ID ASC";
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

?>