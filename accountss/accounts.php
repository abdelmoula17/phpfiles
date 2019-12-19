<?php
//	function test_input()
//	{
	$fp = fopen("login.txt","c+b");
	fclose($fp);
	$fp =fopen("login.txt","r");
	while(!feof($fp))
	{
		$tab[]  =fgets($fp);
	}
	foreach($tab as $key => $value)
	{	
		$exp[] = explode("|",$tab[$key]);
	}
		//print_r($exp);
		//for users
	
	for($i=0;$i<count($tab);$i++)
	{
		for($j = 0; @$exp[$i][$j];$j+=2)
		{
			$users[][] = $exp[$i][$j];
		}
	}
	

			//print_r($users);
			//for passwords
	for($i = 0; $i < count($tab);$i++)
	{
		for($j = 1;@$exp[$i][$j];$j+=2)
		{
			$passwd[][] = $exp[$i][$j];
		}
	}
			//echo $passwd[3][0];
			//print_r($passwd);

	
		for($i = 0; $i < count($tab) -1;$i++)
		{
		
				
				 if(($users[$i][0]== " abdelmoula") && ($passwd[$i][0] == "12345"))
				{
					echo $passwd[$i][0];
					
			
				}

			}
		
		
		//echo test_input("yassine","95123");

?>
