 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
 <html>
<head>
    <title> Climate Finance in Brazil </title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>

<body>       
<?php
include ("head.html");
?> 

 <?php
 
 setlocale(LC_MONETARY, 'pt_BR');
 
 // attempt a connection
 $conn_string = "host=localhost port=5432 dbname=ClimateFinance user=postgres password=pesquisa";
 $dbh = pg_connect($conn_string);
 if (!$dbh) {
     die("Error in connection: " . pg_last_error());
 }       

 // execute query
 $sql = "SELECT * FROM project order by projectyear";
 $result = pg_query($dbh, $sql);
 
 if (!$result) {
     die("Error in SQL query: " . pg_last_error());
 }       

$num = pg_numrows($result);
 
 ?>
  
        
<table border="1" cellspacing="2" cellpadding="2">
<tr>
	<th><font face="Arial, Helvetica, sans-serif">Num.</font></th>
	<th><font face="Arial, Helvetica, sans-serif">Year</font></th>	
	<th><font face="Arial, Helvetica, sans-serif">Donor</font></th>
	<th><font face="Arial, Helvetica, sans-serif">Title</font></th>
	<th><font face="Arial, Helvetica, sans-serif">Cost (USD) </font></th>
</tr>

<?php
 //-------------------------------------------------------------
 // busca linhas da tabela   
 
$i = 0;
while ($i < $num) {
 
	    $ord   =  $i+1 ;
	    $id    =  pg_result($result,$i, 0);
        $year  =  pg_result($result,$i, 1);	    
	    $donor =  pg_result($result,$i,4);
	    $title =  pg_result($result,$i,18);
	    $cost  =  pg_result($result,$i,12);
         
	    echo "<tr>";
        echo "<td>$ord</td>";
        echo "<td>$year</td>";
        echo "<td>$donor</td>";
        echo "<td><a href=\"detail.php?id=$id\"/a>$title</td>";
        echo "<td>"; 
        echo $cost ;           
        echo "</td>"; 
        echo "</tr>";
	$i++;
}	    
?>
	 
</table>
   
 

<?php
 setlocale(LC_MONETARY, 'pt_BR');
 echo $num ;   
           
 // free memory
 pg_free_result($result);       

 // close connection
 pg_close($dbh);
 
?> 
     
 
</body>
 </html>
