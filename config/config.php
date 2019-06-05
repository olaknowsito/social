<?php  
	ob_start(); //this turns on output buffering, saves the php data and pass all to the browser  
	session_start();

	$timezone = date_default_timezone_set('Asia/Manila');
	//displays the date
	//echo "<span style='color:red;font-weight:bold;'>Date: </span>". date('F j, Y g:i:a  ');

	$con = mysqli_connect("arfo8ynm6olw6vpn.cbetxkdyhwsb.us-east-1.rds.amazonaws.com","tvj1yxt3w5ne1e9f","nikbpf9famz7eqy9","cdkd2dhtzrgdn9hw");

	/*return an error*/
	if(mysqli_connect_errno()){
		echo "failed to connect: " . mysqli_connect_errno();
	}
?>