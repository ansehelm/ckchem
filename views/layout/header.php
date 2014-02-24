<?php 

$config["css"] = array('bootstrap-responsive.min','bootstrap.min','jquery.fancybox','style','font-awesome.min','owl.carousel','owl.theme');
$config["js"] = array('jquery.min','bootstrap','jquery.fancybox','jquery.scrollTo.min','jquery.animate-enhanced.min','jquery.easing.1.3','supersized.core.3.2.1','owl.carousel.min');

?>


<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<base href="<?=$GLOBALS["base_url"]?>">
<head>
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,500,400,300' rel='stylesheet' type='text/css'>
	<title>CK Chemicals</title>
	<?= links($config["css"],"css"); ?>
	<script language="javascript" type="text/javascript" src=""></script>

</head>
<body>
	<div class="jumbotron header">
		<div class="col-md-6 col-md-offset-1 headerl">
			<img src="public/img/logo.png" class="logo">
		</div>
		<div class="col-md-5 headermenu">
			<a href="" <?php if(!isset($_GET["key"]) || $_GET["key"]=="home"){echo "class='current'";} ?>>home</a>
			<a href="products" <?php if(isset($_GET["key"])){if($_GET["key"]=="products"){echo "class='current'";}} ?>>products</a>
			<a href="services" <?php if(isset($_GET["key"])){if($_GET["key"]=="services"){echo "class='current'";}} ?>>services</a>
			<a href="contact" <?php if(isset($_GET["key"])){if($_GET["key"]=="contact"){echo "class='current'";}} ?>>contact us</a>
		</div>
	</div>