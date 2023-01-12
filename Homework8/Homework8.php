<?php
//store data into arrays $infoArray[0][0] = 'TikTok Influencer'; $infoArray[0][1] = 'video_1.mp4'; $infoArray[1][0] = 'Boxing Practice'; $infoArray[1][1] = 'video_2.mp4'; $infoArray[2][0] = 'Bike Ride'; $infoArray[2][1] = 'video_3.mp4'; $infoArray[3][0] = 'Rain Drop'; $infoArray[3][1] = 'video_4.mp4'; $infoArray[4][0] = 'Rabbit Hobbit'; $infoArray[4][1] = 'video_5.mp4'; $infoArray[5][0] = 'Leggo Play';
$infoArray[5][1] = 'video_6.mp4';
$infoArray[6][0] = 'ChromeBook Video';
$infoArray[6][1] = 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/
ForBiggerEscapes.mp4';
print "<select id='videoList' size='5' onchange='playvideo()'>";
//loop through the array
for ($i = 0; $i < count($infoArray); $i++) {
print "<option value='" .$infoArray[$i][1]."'>". $infoArray[$i][0]."</option>"; }
print "</select>"; ?>