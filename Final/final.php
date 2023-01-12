<?php
//read passing variable (search text) through the key $searchTxt = $_GET["searchKey"];
//access (connect) database: oscar_movies_db, table: oscar_movies_table //setup 4 parameters for the connection

$file = "final.csv";

 if (file_exists($file) && $fileStream = fopen($file,"r")){
    $firstReading = true;
    print "<select id='movieList' size='10' onchange='showmovieinfo()'>";
    print "<option>Select a Movie</option>";
    $count=0;

    while (($recordArray = fgetcsv($fileStream,0,";")))
        {   
            if ($firstReading == true) $firstReading = false;
//loop through the json array and send the city names as option to the select element for($i = 0; $i < count($jsonArray); $i++)
{
    if ($searchTxt != "") {
    if(substr(strtolower($recordArray[$i]['year']),0,strlen($searchTxt)) == strtolower($searchTxt)) {
    //extract the fields of concern
    $name = $recordArray[$i]["year"];
    $state = $jsonArray[$i]["usps"]; $pop2022 = $jsonArray[$i]["pop2022"];
    $optionValue = $name.",".$state.",".$pop2022;
    //send select option to HTML
    print "<option value='".$optionValue."'>".$name."</option>"; }
    } else {
    //extract the fields of concern
    $name = $jsonArray[$i]["name"];
    $state = $jsonArray[$i]["usps"]; $pop2022 = $jsonArray[$i]["pop2022"];
    $optionValue = $name.",".$state.",".$pop2022;
    //send select option to HTML
    print "<option value='".$optionValue."'>".$name."</option>"; }
    }//end of loop
    //send close of select to HTML
    print "</select>"; ?>