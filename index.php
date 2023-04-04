<html>

<head>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            /* width: 900px; */
            /* background: #e5e5e5; */
            /* background: #34495E; */
            /* border: 4px solid #3498DB;  */
            /* border: 4px solid#f58d85; */
            margin: 20px auto;
        }
    </style>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>

<body>

    <form method="post" class="d-flex" style="align-items:center; width:50%; margin:20px 10px;">
        <input type="text" name="search" required class="form-control me-1" placeholder="Search" />
        <!-- <input type="submit" name="submit" value="Search"> -->
        <button name="submit" value="Search" class="btn btn-primary" type="submit">Search</button>
    </form>




</body>

</html>
<?php

include("dbconnect.php");
if (isset($_POST['submit'])) {
    $str = mysqli_real_escape_string($conn, $_POST['search']);
    $sql = "select * from cities where name = '$str'";
    $res = mysqli_query($conn, $sql);
    if (mysqli_num_rows($res) > 0) {
        while ($row = mysqli_fetch_assoc($res)) { ?>
            <!-- echo $row['name'];

            echo $row['description']; -->
            <br><br><br>
            <table class="table table-striped" style=" align-items:center;width:50%;margin:10px 10px; background-color: primary;">
                <tr>
                    <th scope="col">City Name</th>
                    <th scope="col">Description</th>
                </tr>
                <tr>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['description']; ?></td>
                </tr>
            </table>
<?php }
    } else {
        echo "City does not exist";
    }
}
