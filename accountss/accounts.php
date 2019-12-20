<?php
	function test_input($user_test,$pass_test)
	{
	echo var_dump($pass_test);
	echo var_dump($user_test);
	$fp = fopen("login.txt","c+b");
	fclose($fp);
	$fp =fopen("login.txt","r");
	while(!feof($fp))
	{	
		$tab[] = trim(fgets($fp));
	}
		//echo var_dump($tab);

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
	
			//echo var_dump($users);
			//print_r($users);
			//for passwords
	for($i = 0; $i < count($tab);$i++)
	{
		for($j = 1;@$exp[$i][$j];$j+=2)
		{
			//$a = trim(" ",$exp[$i][$j]);
			$passwd[][] = $exp[$i][$j];
		}
	}
			//echo var_dump($passwd);
			//echo $passwd[3][0];
			//print_r($passwd);

	
		for($i = 0; $i < count($users);$i++)
		{
			if(($passwd[$i][0] == $pass_test) && ($users[$i][0] == $user_test))
					return 1;
		}		
		
}	
		$user = "jawad";
		$pass = "12345";	
		echo var_dump(test_input($user,$pass));

?>
