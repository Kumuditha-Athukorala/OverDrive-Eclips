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
			<li><select>
					<option value="">All Makes</option>
					<option value="saab">Audi</option>
					<option value="mercedes">BMW</option>
					<option value="audi">BENZ</option>
			</select></li>
			<li><select>
					<option value="">All Models</option>
					<option value="saab">A1</option>
					<option value="mercedes">E501</option>
					<option value="audi">S23</option>
			</select></li>
			<li><select>
					<option value="">Min Price</option>
					<option value="saab">20000</option>
					<option value="mercedes">10000</option>
					<option value="audi">8000</option>
			</select></li>
			<li><select>
					<option value="volvo">Max Price</option>
					<option value="saab">20000</option>
					<option value="mercedes">8000</option>
					<option value="audi">5000</option>
			</select></li>
			<li><button>FIND VEHICLES</button></li>
		</ul>
	</div>

	<div class="search-car-list">
		<section class="regular slider">
			<div>
				<img src="./imgs/sh1.jpg">
			</div>
			<div>
				<img src="./imgs/sh2.jpg">
			</div>
			<div>
				<img src="./imgs/sh7.jpg">
			</div>
			<div>
				<img src="./imgs/sh4.jpg">
			</div>
			<div>
				<img src="./imgs/sh5.jpg">
			</div>
			<div>
				<img src="./imgs/sh6.jpg">
			</div>
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



	<script src="https://code.jquery.com/jquery-2.2.0.min.js"
		type="text/javascript"></script>
	<script src="./slick/slick.js" type="text/javascript" charset="utf-8"></script>
	<script src="./js/slider.js" type="text/javascript" charset="utf-8"></script>

</body>
</html>
