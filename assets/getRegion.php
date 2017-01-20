<?php
require_once 'config.php';
	$query = "SELECT distinct(continent) from bloomberg.country ORDER BY ID ASC";
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