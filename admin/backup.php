<?php

backup_tables('localhost','root','','car_rental_SoftEng');

/* backup the db OR just a table */
$host='localhost';
$user='root';
$pass='';
$name='car_rental_SoftEng';
function backup_tables($host,$user,$pass,$name,$tables = '*')
{

$link = mysqli_connect($host,$user,$pass);
mysqli_select_db($name,$link);

//get all of the tables
if($tables == '*')
{
$tables = array();
$result = mysqli_query('SHOW TABLES');
while($row = mysqli_fetch_row($result))
{
$tables[] = $row[0];
}
}
else
{
$tables = is_array($tables) ? $tables : explode(',',$tables);
}
foreach($tables as $table)
{
$result = mysqli_query("SELECT * FROM $table");
$num_fields = mysql_num_fields($result);

$row2 = mysqli_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
$return.= "\n\n".$row2[1].";\n\n";

for ($i = 0; $i < $num_fields; $i++)
{
while($row = mysqli_fetch_row($result))
{
$return.= 'INSERT INTO '.$table.' VALUES(';
for($j=0; $j<$num_fields; $j++)
{
$row[$j] = addslashes($row[$j]);
if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
if ($j<($num_fields-1)) { $return.= ','; }
}
$return.= ");\n";
}
}
$return.="\n\n\n";
}

//save file
$data=date("F j, Y, g-i a");
$handle = fopen('backup/'.'db-backup-'.$data.'-'.$name.'.sql','w+');
fwrite($handle,$return);
fclose($handle);

}
//mysql_query("INSERT INTO `studentpermanentrecord`.`database` (`date`) VALUES (now())") or die(mysql_error());

echo "<script type='text/javascript'>alert('Successfully created backup for you database!');</script>";
   			    echo "<script>document.location='dashboard.php'</script>";   
?>
