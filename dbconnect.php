<?php
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $dbname = "jp_test";
 $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
 mysqli_select_db($conn, $dbname);
