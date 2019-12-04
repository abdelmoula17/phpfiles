<?php

	if(file_exists("test.txt"))
	{
		$fp = fopen("test.txt","c+");
		
		fseek($fp,4);
		fwrite($fp,"i will comback");
		fclose($fp);
	}else
	{
		$fp = fopen("test.txt","c+b");
		fwrite($fp,"Talk is cheap show me the code");
		fclose($fp);
	}


?>
