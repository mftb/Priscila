<html>
    <head>
        <title>Pesquisa</title>
        <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=ISO-8859-1" />
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <link rel="stylesheet" href="site.css" media="all" type="text/css" />
    </head>
    <body>
        <div id="container">
            <div id="header">
                <!-- "cabeçalho do site" -->
                <a href="index.php"><img src="img.png" /></a>
            </div>
            <div id="nav">
                <!-- menu -->
                <ul>
                    <li><a href="index.php" title="Apresentação">Apresentação</a></li>
                    <li style="background:#0b087c;"><a style="color:#ffffff;" href="sumario.php" title="Sumário Executivo">Sumário Executivo</a></li>
                    <li><a href="associadas.php" title="Pesquisas Semelhantes">Pesquisas Semelhantes</a></li>
                    <li><a href="links.php" title="Links">Links</a></li>
                    <li><a href="contato.php" title="Contato">Contato</a></li>
                </ul>
            </div>
            <hr id="linha_menu" noshade="noshade" />
            <div id="content">
                <br />
                <h1>Climate Finance in Brazil</h1>
                
                <?php
                    setlocale(LC_MONETARY, 'pt_BR');
 
                    // attempt a connection
                    $conn_string = "host=localhost port=5432 dbname=climate user=mftb password=m1a3t0t2";
                    $dbh = pg_connect($conn_string);
                    if (!$dbh) {
                        die("Error in connection: " . pg_last_error());
                    }       

                    $id = $_GET['id'] ;
 
                    // execute query
                    $sql = "SELECT * FROM project where projectid = $id";
                    $result = pg_query($dbh, $sql);
 
                    if (!$result) {
                        die("Error in SQL query: " . pg_last_error());
                    }       

                    $num = pg_numrows($result);
                    
                    //-------------------------------------------------------------
                    // busca linhas da tabela   
 
                    $i = 0;
                    while ($i < $num) {
 
                        $ord         =  $i+1 ;
                        $id          =  pg_result($result,$i, 0);
                        $year        =  pg_result($result,$i, 1);            
                        $startDate   =  pg_result($result,$i, 2);
                        $endDate     =  pg_result($result,$i, 3);
                        $donor       =  pg_result($result,$i, 4);
                        $donorId     =  pg_result($result,$i, 5); 
                        $finAgency   =  pg_result($result,$i, 6);
                        $implAgency  =  pg_result($result,$i, 7);
                        $commAmt     =  pg_result($result,$i, 8);
                        $curType1    =  pg_result($result,$i, 9);
                        $commConst   =  pg_result($result,$i, 10);
                        $totalCost   =  pg_result($result,$i, 12);
                        $curType2    =  pg_result($result,$i, 13);
                        $disAmt      =  pg_result($result,$i, 14);
                        $curType3    =  pg_result($result,$i, 15);
                        $disConst    =  pg_result($result,$i, 16);                
                        $title       =  pg_result($result,$i, 18);
                        $shortDesc   =  pg_result($result,$i, 19);
                        $longDesc    =  pg_result($result,$i, 20);
          
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Year: ";
                        echo "$year";         
                        echo "</span>"; 
                        echo "</p>";
      
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Start Date: ";
                        if ( empty ($startDate))
                            echo "N/A" ;
                        else  echo "$startDate";         
                        echo "</span>"; 
                        echo "</p>";
    
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> End Date: ";
                        if ( empty ($endDate))
                            echo "N/A" ;
                        else  echo $endDate  ;
                        echo "</span>"; 
                        echo "</p>";
        
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Donor: ";
                        echo "$donor";         
                        echo "</span>"; 
                        echo "</p>";

                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Donor Project ID: ";
                        echo "$donorId";         
                        echo "</span>"; 
                        echo "</p>";
    
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Financing Agency: ";
                        echo "$finAgency";         
                        echo "</span>"; 
                        echo "</p>";
        
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Implementing Agency: ";
                        if ( empty ($implAgency))
                            echo "N/A" ;
                        else  echo "$implAgency";                       
                        echo "</span>"; 
                        echo "</p>";

                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Commitment Amount: ";
                        echo "$commAmt";        
                        echo "  " ;
                        echo "$curType1";         
                        echo "</span>"; 
                        echo "</p>";
        
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Commitment Constant 2000 (USD): ";
                        echo "$commConst";         
                        echo "</span>"; 
                        echo "</p>";

                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Total Project Cost: ";

                        if ( empty ($totalCost))
                            echo "N/A" ;
                        else  {
                            echo "$totalCost"; 
                            echo "  " ;
                            echo "$curType2";
                        }
        
                        echo "</span>"; 
                        echo "</p>";
    
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Disbursement Amount: ";
                        echo "$disAmt"; 
                        echo "  " ;
                        echo "$curType3";   
                        echo "</span>"; 
                        echo "</p>";  
    
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Disbursement Constant 2000 (USD): ";
                        echo "$disConst";   
                        echo "</span>"; 
                        echo "</p>";  
        
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Title: ";
                        echo "$title";         
                        echo "</span>"; 
                        echo "</p>"; 
                
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Short description: ";
                        if ( empty ($shortDesc))
                            echo "N/A" ;
                        else echo "$shortDesc";         
                        echo "</span>"; 
                        echo "</p>";
        
                        echo "<br/>" ;
                        echo "<p>";
                        echo "<span> Long description: ";
                        if ( empty ($longDesc))
                            echo "N/A" ;
                        else echo "$longDesc";           
                        echo "</span>"; 
                        echo "</p>";        
        
                        $i++;
                    }        

                    setlocale(LC_MONETARY, 'pt_BR');

           
                    // free memory
                    pg_free_result($result);       

                    // close connection
                    pg_close($dbh);
 
                ?> 
                
                <br />
                <a href="bd.php">Voltar</a>
                <br />
            </div>
            <div id="footer">
                <p>Copyright &copy; 2012 &#124; Contact <a href="mailto:matheusboy.mbs@gmail.com" title="Email: Webmaster">Webmaster</a></p>
            </div>
        </div>
    </body>
</html>
