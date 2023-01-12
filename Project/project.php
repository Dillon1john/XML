
<!DOCTYPE html>
<html>
    <body>
        <h2>NBA Teams</h2>


        <?php
            //read the selected question
            $question = $_GET["question"];
            print "Question: " . $question;
            $file = fopen("nba.csv", "r");
            $row = 0;
            

            if ($question == 1)
            {
                while (($data = fgetcsv($file,1000,";")) !=FALSE)
                {
                    if ($row != 0)
                    {
                      print "<br/><b>Team:</b> " . $data[0]. "&emsp;<b>Year Founded:</b> " . $data[1];  
                    }
                    $row ++;
                    
                }
            }
            $r2 = 0;
            $years = array();
            if ($question == 2){
                
                while (($data = fgetcsv($file,1000,";")) !=FALSE)
                {

                    
                    array_multisort($year,SORT_DESC,$data);
                    if ($r2 != 0 && $data[1]<=1948)
                    {
                      print "<br/><b>Team:</b> " . $data[0]. "&emsp;<b>Year Founded:</b> " . $data[1];  
                    }
                    $r2 ++;
                    
                }
            }

            if ($question == 3){
            
                while (($data = fgetcsv($file,1000,";")) !=FALSE)
                {

                    
                    array_multisort($year,SORT_DESC,$data);
                    if ($r2 != 0 && $data[1]>=1989)
                    {
                        print "<br/><b>Team:</b> " . $data[0]. "&emsp;<b>Year Founded:</b> " . $data[1];  
                    }
                    $r2 ++;
                    
                }
                

            }
        
        ?>


    </body>
</html>


