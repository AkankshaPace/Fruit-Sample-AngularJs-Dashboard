<?php
// Connecting to database as mysqli_connect("hostname", "username", "password", "database name");
$con = mysqli_connect("127.0.0.1", "root", "", "bloomberg");

if($con->connect_error){
	die("Connection failed! ". $con->connect_error);
}

?>