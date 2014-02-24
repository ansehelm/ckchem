<?php

function links($array,$type){

	$output = "";
	foreach ($array as $a) {
		if ($type=="css") :
			$output .= "<link rel='stylesheet' type='text/css' href='".$GLOBALS["base_url"]."public/css/".$a.".css'>";
		else:
			$output .= "<script language='javascript' type='text/javascript' src='".$GLOBALS["base_url"]."public/js/".$a.".js'></script>";
		endif;
	}
	return $output;
}

function view($path, $data = null) 
{

	$path .= '.php';

	if ( $data ) {
		extract($data);
	}

	include "views/layout/header.php";

	include "views/".$path;

	include "views/layout/footer.php";
};