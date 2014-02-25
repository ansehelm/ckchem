<div class="footer">
	Copyright 2013 © CK Chemical Sdn Bhd. All Right Reserved.
</div>


<?= links($config["js"],"js"); ?>
<script type="text/javascript">

	
		// Function to get the height of the end user's window
		function getWindowWidth() {
			var winWidth = 0;
			if ((screen.width < 300)||(screen.height < 300)) {
				if (( window.outerWidth != undefined )||( window.outerWidth > 100 )){
					winWidth = window.outerWidth;
				}
				else{
					winWidth = screen.Width;
				}
			}
			else {
				if( typeof (window.innerWidth ) == 'number') {

					winWidth = window.innerWidth;
				} else if(document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientWidth )) {

					winWidth = document.documentElement.clientWidth;
				} else if(document.body && (document.body.clientWidth || document.body.clientWidth )) {

					winWidth = document.body.clientWidth;
				} else if(screen.Width == 'number'){

					winWidth = screen.Width;
				}
			}
			return winWidth;
		}

		// alert(getWindowWidth());
		
		jQuery(function($){
			if (getWindowWidth() > 768){
				$.supersized({
					slides  :  	[ {image : 'public/img/<?=$GLOBALS['blah']?>.jpg', title : 'bg'} ],
					vertical_center: false,
				});
			};

			$("#owl-demo").owlCarousel({

				navigation : true,
				slideSpeed : 300,
				paginationSpeed : 400,
				singleItem:true,
				pagination:false

			});

			$(".owl-slide-inner").owlCarousel({

				navigation : true,
				slideSpeed : 300,
				paginationSpeed : 400,
				singleItem:true,
				pagination:false,
				autoPlay: true
			});
		});

		$(window).resize(function() {
			var newWindowWidth = getWindowWidth();
			if(newWindowWidth <= 768){
				$("#supersized").remove();
			} else if ($("#supersized").length == 0 && newWindowWidth > 768) {
				var loadSupersizedDiv = jQuery('<div id="supersized"></div>').appendTo(document.body);

				$.supersized({
					slides  :  	[ {image : 'public/img/<?=$GLOBALS['blah']?>.jpg', title : 'bg'} ],
					vertical_center: false,
				});
			}
		});



	</script>
</body>
</html>