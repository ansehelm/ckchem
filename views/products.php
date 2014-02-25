<?php 
// Variable setup
$type= 0;
$lh = 0;
$count = array();
$all = Products::find('all');
foreach ($all as $a) {
	$count[] = $a->type;
};
$exact = count(array_unique($count));

// get product type
$proid = (isset($_GET["proid"]) ? $_GET["proid"] : 1);
if($proid > $exact or $proid <= 0){
	$type = 3;
	$lh = 40;
} else {
	$cats = Products::find('all', array('conditions' => array('type = ?', $proid)));
};
//check if product is combined or not (2=combined) or error (3)
if ($type != 3){
	if (count($cats) == 2){
		$type = 2;
	} else {
		$type = 1;
	};
};

//extract info
if ($type == 1){
	$str = $cats[0]->text;
	$arr = explode("\n", $str);
	$amount = count($arr);
} else if ($type == 2) {
	$str = $cats[0]->text;
	$arr = explode("\n", $str);
	$str2 = $cats[1]->text;
	$arr2 = explode("\n", $str2);
	$amount = count($arr) + count($arr2);
};
?>

<div class="tagline hideonmobile pro-tagline">
	<div class="col-md-11 col-md-offset-1 ">
		<h1>PRODUCTS</h1>
		<h2>In Pharma, Nutra,. Enzyme and Food Ingredient</h2>
		<br><br>
	</div>
</div>
<div class="products">
	<div class="product-banner hideonnormal"></div>

	<!-- Section 1 -->
	<div class="owl-slide">
		<div class="owl-slide-inner">
			<?php 
			$o = 0;
			$i = 0;
			$max = count($all);
			foreach ($all as $a){
				$o ++;
				$i ++;
				if ($o == 1){
					echo "<div class='item'>";
				};

				echo "<a class='product-icon' href='products/".$i."' style='background-image: url(public"."/"."img"."/"."product".$i.".jpg)'></a>";

				if ($o == 6 || $i == $max){
					echo "</div>";
					$o = 0;
				};
			};
			?> 
		</div>
	</div>

	<!-- Section 2 -->
	<div class="product-search hideonmobile">
		<input type="text" placeholder="Search"><input type="submit" value="SEARCH">
	</div>


	<div class="product-main">
		<div class="product-holder hideonmobile" style="background-image: url(public/img/product<?=$proid?>.jpg)">
		</div>

		<div class="product-list">
			<h1>
				<?php 
				if($type == 3){
					echo "Error Detected";
				} else {
					echo $cats[0]->title;
				};
				?>
			</h1>
			<ul>
				<?php 
				if ($type==1){
					for ($i=0; $i < round($amount/2); $i++) { 
						echo "<li>".$arr[$i]."</li>";
					};
				} else if($type == 2) {
					foreach ($arr as $ar) {
						echo "<li>".$ar."</li>";
					};
				} else {
					echo "This product doesn't exist!";
				}
				?>
			</ul>
		</div>

		<div class="product-list">
			<h1>
				<?php 
				if($type == 1 || $type == 3){
					echo "&nbsp;";
				} else if ($type == 2) {
					echo $cats[1]->title;
				};
				?>
			</h1>
			<ul>
				<?php 
				if ($type==1){
					for ($i=round($amount/2); $i < $amount; $i++) { 
						echo "<li>".$arr[$i]."</li>";
					}
				} else if($type == 2) {
					foreach ($arr2 as $ar) {
						echo "<li>".$ar."</li>";
					};
				} else {
					echo "&nbsp;";
				}
				?>
			</ul>
		</div>
		<hr class="hideonnormal">
		<div class="product-interest">
			<h1>Interested?</h1>
			<h1>Contact us now!</h1>
			<div class="button"><i class="fa fa-envelope-o"></i>ENQUIRY</div>
		</div>
	</div>
	<div class="product-bottom">&nbsp;</div>
</div>
