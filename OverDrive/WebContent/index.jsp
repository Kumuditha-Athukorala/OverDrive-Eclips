<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Over Drive</title>

<link rel="stylesheet" type="text/css" href="./slick/slick.css">
<link rel="stylesheet" type="text/css" href="./slick/slick-theme.css">
<link rel="stylesheet" href="./css/index.css">


	
<style type="text/css">
</style>

</head>
<body>

	<div class="logo-banner">
		<img src="./imgs/icon.png"> <span class="logo-name">Over
			Drive</span>
	</div>


	<nav class="menu-bar">

		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#">Used Cars</a></li>
			<li><a href="#">Services</a></li>
			<li><a href="#">About Us</a></li>
			<li><a href="#">Contact Us</a></li>
		</ul>
	</nav>
	<div class="img-slider">
		<img src="./imgs/car2.jpeg">
	</div>
	<div class="drop-down-container">
		<ul>
			<li><select id="carBrands">
					<option value="All Brands">All Brands</option>
			</select></li>

			<li><select id="carTypes">
					<option value="All Types">All Types</option>
			</select></li>

			<li><select id="minPrice">
					<option value="0">Min Value</option>
					<option value="50000">50000</option>
					<option value="100000">100000</option>
			</select></li>

			<li><select id="maxPrice">
					<option value="0">Max Value</option>
					<option value="100000">100000</option>
					<option value="200000">500000</option>
					<option value="1500000">1500000</option>

			</select></li>
			<li><button type="button" id="search" value="Search">FIND VEHICLES</button></li>
		</ul>
	</div>

	<div class="search-car-list" >
		<section id="search-car" class="regular slider">				
					
					
		</section>
	</div>

	<div class="featured-car-list">
		<hr class="horizontal-line-start">
		<h2 class="featured-car-heading">FEATURED CARS</h2>
		<hr class="horizontal-line-end">

		<div class="index-car-list">
			<div class="index-featured-car">
				<span class="car-image"><img src="./imgs/bmw1.jpg"></span> <br>
				<span class="car-description"> 2016 - BMW - X5 </span> <br> <span
					class="car-price"> $ 12000 </span><br> <span
					class="car-button">
					<button>VIEW MORE</button>
				</span>
			</div>


			<div class="index-featured-car">
				<span class="car-image"><img src="./imgs/bmw1.jpg"></span> <br>
				<span class="car-description"> 2016 - BMW - X5 </span> <br> <span
					class="car-price"> $ 12000 </span><br> <span
					class="car-button">
					<button>VIEW MORE</button>
				</span>
			</div>

			<div class="index-featured-car">
				<span class="car-image"><img src="./imgs/bmw1.jpg"></span> <br>
				<span class="car-description"> 2016 - BMW - X5 </span> <br> <span
					class="car-price"> $ 12000 </span><br> <span
					class="car-button">
					<button>VIEW MORE</button>
				</span>
			</div>

			<div class="index-featured-car">
				<span class="car-image"><img src="./imgs/bmw1.jpg"></span> <br>
				<span class="car-description"> 2016 - BMW - X5 </span> <br> <span
					class="car-price"> $ 12000 </span><br> <span
					class="car-button">
					<button>VIEW MORE</button>
				</span>
			</div>

		</div>
	</div>
	<div class="index-about-us">
		<hr class="horizontal-line-start">
		<h2 class="featured-car-heading">ABOUT US</h2>
		<hr class="horizontal-line-end">
	</div>

	<div class="index-contact-us">
		<hr class="horizontal-line-start">
		<h2 class="featured-car-heading">CONTACT US</h2>
		<hr class="horizontal-line-end">
	</div>


	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="./slick/slick.js" type="text/javascript" charset="utf-8"></script>
<script src="./js/slider.js" type="text/javascript" charset="utf-8"></script>
<script>
  var entireData=[];
  var finalData=[];
  var uniqueCarBrands=[];
  var uniqueCarTypes=[];
  var count=0;
 $.getJSON('carco.json', function(data) 
               {
	            // console.log(data.cars.length); 
	             count=data.cars.length;
	             entireData=data.cars;
                // console.log(entireData[0]);
	            // console.log(entireData);
	            var  carBrandscount =0 ;
	            var carBrands=[];
	            var carTypes=[];
	                
	             /* Fetching all brand names */
	         	 var j=0;          
	             for (i = 0; i < count; i++)
	             {
	            	
	            		
	            			carBrands[j]=entireData[i].name;
	            			carTypes[j]=entireData[i].type;
	            		    j++;
	              } 
	            
	             var uniqueCarBrands= carBrands.filter(function(itm,i,carBrands)
	            		 {
	            	       return i==carBrands.indexOf(itm);
	            	 
	            		 });
	         //    console.log(uniqueCarBrands); //populate
	             
	             var uniqueCarTypes= carTypes.filter(function(itm,i,carTypes)
	            		 {
	            	       return i==carTypes.indexOf(itm);
	            	 
	            		 });
	         //    console.log(uniqueCarTypes); //populate
	             var $carBrandsDD= $("#carBrands");
	             for (var i=0; i< uniqueCarBrands.length ;i++ )
	            	 {
	            	 $carBrandsDD.append($("<option />").val(uniqueCarBrands[i]).text(uniqueCarBrands[i]));	             

	            	 }
	           
	             var $carTypesDD= $("#carTypes");
	             for (var i=0; i< uniqueCarTypes.length ;i++ )
	            	 {
	            	 $carTypesDD.append($("<option />").val(uniqueCarTypes[i]).text(uniqueCarTypes[i]));	             

	            	 }
	             
	             
	             /*Getting Result*/
	             
	             var brandState = $("#carBrands").children(":selected").attr("value");
	             var typeState = $("#carTypes").children(":selected").attr("value");
	             var minState = $("#minPrice").children(":selected").attr("value");
	             var maxState = $("#maxPrice").children(":selected").attr("value");
	            
	             
	             /*
	             if()  Getting Results for no select
	            	 {
	            	 
	            	 }
	             
	             else*/
	             $("#search").click(function() { 
	            	
	            	 var $sectionId = $("#search-car") 
	            	
	            	 if(brandState == "All Brands" && typeState=="All Types" && minState =="0" && maxState =="0")
	            	 {
	            	 	for(var i=0;i<entireData.length;i++ ){
	            	 		// $carTypesDD.append($("<option />").val(uniqueCarTypes[i]).text(uniqueCarTypes[i]));	    
	            	 		
	            	 		$sectionId.append($("<div>").append($("<img>").attr('src', entireData[i].image1)));           	 		
	            	 		
	            	 		
	            	 		
	            	 		//$sectionId.append($("</div>"));
	            	 		
	            	 		
	            	 	}
	            	 
	            	 	 $(".regular").slick({
	 	            		
	 	            	    dots: false,
	 	            	    infinite: true,
	 	            	    slidesToShow: 4,
	 	            	    slidesToScroll: 1
	 	            	  });        
	            	 	
	            	 	
	            	 	    
	            	 	   
	            	 
	            	 
	            	 }
	                
	             }); 
	             /*
	               
	             */
               }); 
 console.log("regular starts") ;

 
 
	
</script>	



 

</body>
</html>
