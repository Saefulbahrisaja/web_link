<?php 
$con=mysqli_connect('localhost','root','','db_lingkungan') or die('cannot connect to server');
$data=mysqli_query($con, "SELECT * FROM tb_masyarakat");
while($row=mysqli_fetch_array($data)){               
    $myCountry[] = $row['nik'].":".$row['nama_lengkap'] ; 
}
echo json_encode($myCountry);
?>