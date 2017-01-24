<?php
require_once 'config.php';
if(isset($_GET["var"])){
	$var = $_GET["var"];

	switch($var){
	 	case 'Fruits':	$where = " where 1=1 ";

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
	 					break;
	 	case 'FruitCls':
	 					$query = "SELECT distinct(fruitClassification) from bloomberg.fruits ORDER BY ID ASC";
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
	 					break;
	 	case 'Countries':
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
	 					break;
	 	case 'Region': 
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
	 					break;
	 	case 'Quantity':
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
						

						$query = "Select mon,case when quantity is null then 0 else quantity end as quantity from bloomberg.calendar cal1 Left join (SELECT cal.ID as id,sum(quantity)  as quantity FROM bloomberg.sales s left join bloomberg.calendar cal on cal.mon = DATE_FORMAT(s.createdAt,'%b') left join bloomberg.fruits f on s.fruitID = f.ID inner join bloomberg.country c on c.ID = s.countryOfcultivationID".$where."group by cal.ID) as ax on cal1.ID = ax.ID";
						$result = $con->query($query);
						$data = array();
						$i=0;
						if($result->num_rows > 0) {
							while($row = $result->fetch_object()) {
								$data[$i++] = $row;
							}
						}
						else{
							$data[] = [];
						}
						echo json_encode($data, JSON_PRETTY_PRINT);
					 	break;
	 	case 'Revenue':
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

						$query = "Select mon,case when revenue is null then 0 else revenue end as revenue from bloomberg.calendar cal1 Left join (SELECT cal.ID as id,(s.revenue - (s.quantity * s.cost)) as revenue FROM bloomberg.sales s left join bloomberg.calendar cal on cal.mon = DATE_FORMAT(s.createdAt,'%b') left join bloomberg.fruits f on s.fruitID = f.ID inner join bloomberg.country c on c.ID = s.countryOfcultivationID".$where."group by cal.ID) as ax on cal1.ID = ax.ID";

						$result = $con->query($query);
						$data = array();
						$i=0;
						if($result->num_rows > 0) {
							while($row = $result->fetch_object()) {
								$data[$i++] = $row;
							}
						}
						else{
							$data[] = [];
						}
						echo json_encode($data, JSON_PRETTY_PRINT);
	 					break;
	 	default:

	}
}