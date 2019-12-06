<?php
$fp = fopen("count.txt","c+b");
fclose($fp);
$fp = fopen("count.txt","c+");
fseek($fp,0,SEEK_END);
fwrite($fp,date("d m y h:i:s",time())."\n");

fclose($fp);
$fp = fopen("count.txt","r");

while(!feof($fp))
{
    $tab[] = fgets($fp);
}
fclose($fp);

$fp = fopen("count.txt","c+");
fseek($fp,0,SEEK_END);
$t = count($tab) - 1;
fwrite($fp,$t."|");
fclose($fp);

?>