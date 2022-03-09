<?php
	$noidung=mysql_query("select * from logo where id='10'");
	$row=mysql_fetch_array($noidung);
	echo "admin/".$row['noidung'];
?>