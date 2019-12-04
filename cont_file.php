<?php
	if(file_exists("client.txt"))
	{
		$fp = fopen("client.txt","c+");
		fseek($fp,0,SEEK_END);
		fwrite($fp,"nom1 | premom1 | adresse1 | ville1\n");
		fclose($fp);
		$fp = fopen("client.txt","c+");
		fseek($fp,0,SEEK_END);
		fwrite($fp,"nom2 | prenom2 | adresse2 | ville2\n");
		fclose($fp);
		$fp = fopen("client.txt","c+");
		fseek($fp,0,SEEK_END);
		fwrite($fp,"nom3 | prenom3 | adresse3 | ville3\n");
		fclose($fp);
		$fp = fopen("client.txt","r");
		echo " ";
		while(!feof($fp))
		{
			$t = fgets($fp);
			$exp = explode("|",$t);
			foreach($exp as $key => $value)
			{
				echo $value." ";
			}
		}
		fclose($fp);


	}else
	{
		$fp = fopen("client.txt","c+b");
		fclose($fp);
	}
?>
