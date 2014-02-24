<?php

require_once 'php-activerecord/ActiveRecord.php';

ActiveRecord\Config::initialize(function($cfg){
	$cfg->set_model_directory('models');
	$cfg->set_connections(array(
		'development' => 'mysql://root:root@localhost/ckchem'
		// 'development' => 'mysql://lxcommy_newadmin:1q2w3e4r5t@localhost/lxcommy_lxii'
		));
});

if (isset($_GET["key"])){

	if ($_GET["key"] == "services"){
		$GLOBALS['blah'] = 'bg2';
	};

	if ($_GET["key"] == "products"){
		$GLOBALS['blah'] = 'bg3';
	};

	if ($_GET["key"] == "contact"){
		$GLOBALS['blah'] = 'bg4';
	};

} else {
	$GLOBALS['blah'] = 'bg1';
};

$GLOBALS['base_url'] = "http://localhost/localhost/ckchem/";
// $GLOBALS['base_url'] = "http://draft.lx2.com.my/ckchem/";

require 'controller/functions.php';

$key = (isset($_GET["key"]) ? $_GET["key"] : false);

// Retrieve Data from DB


switch ($key) {

	case 'services':
	$view='services';
	break;

	case 'products':
	$view='products';
	break;

	case 'contact':
	$view='contact';
	break;

	default:
	$view='home';
	break;

};

$proid = (isset($_GET["proid"]) ? $_GET["proid"] : false);



view($view);