<html>
    <head>
        <title>Pesquisa</title>
        <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=ISO-8859-1" />
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <link rel="stylesheet" href="site.css" media="all" type="text/css" />
    </head>
    <!-- aqui viria o resto da página, layout fortemente insparado em http://www.eci.ox.ac.uk/index.php -->
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
                <!-- TODO ajeitar o style da tabela -->
                <h1>Climate Finance in Brazil</h1>
                
                <!-- o codigo em php abaixo *NAO* foi escrito por Matheus Boy -->
                <?php
                    setlocale(LC_MONETARY, 'pt_BR');
 
                    // attempt a connection
                    $conn_string = "host=localhost port=5432 dbname=climate user=mftb password=m1a3t0t2";
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
                        <th>Num. </th>
                        <th>Year </th>
                        <th>Donor </th>
                        <th>Title </th>
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
                        echo "<tr>";
                        echo "<td>$ord</td>";
                        echo "<td>$year</td>";
                        echo "<td>$donor</td>";
                        echo "<td><a href=\"detail.php?id=$id\"/a>$title</td>"; 
                        echo "</tr>";
                        $i++;
                    }        
                ?>
                
                </table>
                
                <?php
                    setlocale(LC_MONETARY, 'pt_BR');
                    // free memory
                    pg_free_result($result);       
                    // close connection
                    pg_close($dbh);
                ?>
                
                </div>
            <div id="footer">
                <p>Copyright &copy; 2012 &#124; Contact <a href="mailto:matheusboy.mbs@gmail.com" title="Email: Webmaster">Webmaster</a></p>
            </div>
        </div>
    </body>
</html>
