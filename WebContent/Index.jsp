<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechM shopping</title>
<style>
</style>

<script language="javascript" src="ScriptFunctions/jquery1-1.10.2.js"
	type="text/javascript"></script>
<link rel="stylesheet" href="cssFunctions/styleIndexFile.css" />
<link rel="stylesheet" href="cssFunctions/style3.css" />
<script language="javascript" src="ScriptFunctions/jquery1-ui.js"
	type="text/javascript"></script>

<script language="javascript" src="ScriptFunctions/functions2.js"
	type="text/javascript"></script>
	<script type="text/javascript">
	var projectName="${pageContext.request.contextPath}";
	</script>
<link rel="stylesheet" href="cssFunctions/jquery1-ui.css" />



<link rel="shortcut icon" href="images/icon1.ico" />
</head>
<body>

	<div id="container">
		<div id="userOptions">
			<ul>
				<li><a href="#">Accounts</a>
				</li>
				<li><a href="#">Wallet</a>
				</li>
				<li><a href="#">Reviews</a>
				</li>
				<li><a href="#">Order</a>
				</li>
				<li><a href="Logout.html">LogOut</a>
				</li>

			</ul>
		</div>
		<div id="suggestionImageDIv"></div>
		<div id="suggestions"></div>
		<div id="aboveHeader"">

			<div id="companyImage">
				<img src="images/companyImage.png" id="logo" alt="">
			</div>
			<div id="menuBar">
				<ul id="listt">
					<li><a href="#"><label id="labelElectronics"
							title="electronicsMenu">electronics</label> </a>
					</li>

					<li><a href="#"><label id="labelMen" title="menMenu">men</label>
					</a>
					</li>
					<li><a href="#"><label id="labelWomen" title="womenMenu">women</label>
					</a>
					</li>
					<li><a href="#"><label id="labelBoys" title="boysMenu">boys
								and kids</label> </a>
					</li>
				</ul>

			</div>
			<div id="smallLinks" onmouseover="hideContent()">
				<ul>
					<li><a href="homePage.html">home<label class="linksLabel">|</label>
					</a>
					</li>

					<li><a href="#">about us<label class="linksLabel">|</label>
					</a>
					</li>
					<li><a href="#">contact<label class="linksLabel">|</label>
					</a>
					</li>
					<li><a href="javascript:showCart()">ViewCart<label
							class="linksLabel">|</label> </a>
					</li>
					<li><a href="javascript:ramana()">trackOrder<label
							class="linksLabel">|</label> </a>
					</li>
					<li><a id="signUpId" href="javascript:register()">SignUp<label
							class="linksLabel">|</label> </a>
					</li>
					<li id="loginId" title="" class=""><a
						href="javascript:login()"> login</a>
					</li>
				</ul>
			</div>
			<div id="cornerImage">
				<img src="images/cornerImage1.jpg" alt="">
			</div>
			<div id="serachBox">
				<input id="serchText" type="text" name="serchValue"> <input
					id="searchButton" type="submit" value="ok" onclick="searchItem()"></input>
			</div>

		</div>

		<div id="itemsContent" class="linksInItemContent"" >

			<div id="images">
				<marquee>
					<label class="imagesHeadLabel">Shop here</label>
				</marquee>
				<div id="someText"></div>
			</div>
			<div id="image4">
				<img id="itemContentImage" src="images/itemContent1.png" alt="">
				<div id="commMsg"></div>
			</div>

			<div id="loginHere">
				<div id="successContent"></div>
			</div>

			<div id="electronicsMenu" class="contentModel">
				<label class="waterMark">Electronics</label>
				<div id="mobiles">
					<label class="headingLabel">Mobiles</label>

					<ul>
						<li><a id="images/motorola" href=""><label
								id="images/motorola/moto" onclick="showImages(this.id)">motorola</label>
						</a></li>
						<li><a href="#">nokia</a></li>
						<li><a href="#">samsung</a></li>
						<li><a href="#">LG</a></li>
						<li><a href="#">Lenovo</a></li>
						<li><a href="#">moto G</a></li>
						<li><a href="#">celkon</a></li>
						<li><a href="#">micromax</a></li>
						<li><a href="#">all brands</a></li>
						<li><a href="#">android phones</a></li>

					</ul>
				</div>

				<div id="computers">
					<label class="headingLabel">computers</label>
					<div id="laptops">
						<ul>
							<li><a href="#">Apple</a></li>
							<li><a href="#">Hp</a></li>
							<li><a href="#">samsung</a></li>
							<li><a href="#">LG</a></li>
							<li><a href="#">Lenovo</a></li>
							<li><a href="#">Chrome Book</a></li>
							<li><a href="#">celkon</a></li>
							<li><a href="#">micromax</a></li>
							<li><a href="#">all brands</a></li>


						</ul>
					</div>

					<div id="accessories">

						<ul>
							<li><label>Accessories</label></li>
							<li><a href="#">pen drives</a></li>
							<li><a href="#">Hard disks</a></li>
							<li><a href="#">Head phones</a></li>
							<!-- <li><a href="#">LG</a></li>
							<li><a href="#">Lenovo</a></li>
							<li><a href="#">moto G</a></li>
							<li><a href="#">celkon</a></li>
							<li><a href="#">micromax</a></li>
							<li><a href="#">all brands</a></li>
							<li><a href="#">android phones</a></li>
 -->
						</ul>
					</div>
				</div>
				<div id="home">
					<label class="headingLabel">Home appliances</label>
					<ul>
						<li><a href="#">Televisions</a></li>
						<li><a href="#"><label id="images/airCoolers/AC"
								onclick="showImages(this.id)">Air coolers</label> </a></li>
						<li><a href="#">Air Conditioners</a></li>
						<li><a href="#">lighiteneing</a></li>
						<li><a href="#">induction cookers</a></li>
						<li><a href="#">electric ketteles</a></li>
						<!-- <li><a href="#">celkon</a></li>
							<li><a href="#">micromax</a></li>
							<li><a href="#">all brands</a></li>
							<li><a href="#">android phones</a></li> -->

					</ul>
				</div>

				<div id="audio-video">
					<label class="headingLabel">Audio&Video</label>
					<ul>
						<li><a href="#">Mp3 Players</a></li>
						<li><a href="#">iPods</a></li>
						<li><a href="#">speakers</a></li>
						<li><a href="#">all audio and video</a></li>

					</ul>

				</div>



			</div>

			<div id="menMenu" class="contentModel">
				<label class="waterMark">Mens</label>
				<div id="clothing">
					<label class="headingLabel">Clothing</label>
					<ul>
						<li><a href="#">New arrivals</a></li>
						<li><a href="#">Casuals</a></li>
						<li><a href="#">Party wears</a></li>
						<li><a href="#">Trousers</a></li>
						<li><a href="#">T-shirts</a></li>
						<li><a href="#">Sports wear</a></li>
						<li><a href="#">winter </a></li>
						<li><a href="#">micromax</a></li>
						<li><a href="#">all brands</a></li>
						<li><a href="#">android phones</a></li>

					</ul>

				</div>
				<div id="footWear">
					<label class="headingLabel">Footwear</label>
					<ul>
						<li><a href="#">Sport shoes</a></li>
						<li><a href="#">Casuals shoes</a></li>
						<li><a href="#">Running shoes</a></li>
						<li><a href="#">Formal shoes</a></li>
						<li><a href="#">Sandals</a></li>
						<li><a href="#">Boots</a></li>
						<li><a href="#">Shoe care </a></li>
						<li><a href="#">micromax</a></li>
						<li><a href="#">all brands</a></li>
						<li><a href="#">android phones</a></li>

					</ul>

				</div>
				<div id="watches">
					<label class="headingLabel">Watchess</label>
					<ul>
						<li><a href="#">Fast track</a></li>
						<li><a href="#">Casio</a></li>
						<li><a href="#">Titan</a></li>
						<li><a href="#">Fassi</a></li>
						<li><a href="#">Timex</a></li>
						<li><a href="#">Q&Q</a></li>
						<li><a href="#">Maxima </a></li>
						<li><label>Mens accessories</label></li>
						<li><a href="#">Bracelets</a></li>
						<li><a href="#">WristBands</a></li>

					</ul>

				</div>
				<div id="sunGlasses">
					<label class="headingLabel">SunGlasses</label>
					<ul>
						<li><a href="#">Aviator</a></li>
						<li><a href="#">Way Farer</a></li>
						<li><a href="#"><i>view all</i> </a></li>
						<li><label>Bags and Belts</label></li>
						<li><a href="#">Back packs</a></li>
						<li><a href="#">Laptop bags</a></li>
						<li><a href="#">Messenger Bags</a></li>

						<li><label>Belts</label></li>
						<li><a href="#">WristBands</a></li>

					</ul>

				</div>





			</div>
			<div id="womenMenu" class="contentModel">
				<label class="waterMark">Wo Men</label>
				<div id="clothingWomen">
					<label class="headingLabel">Clothing</label>
					<ul>
						<li><a href="#">dresses</a></li>
						<li><a href="#">Ethnic wear</a></li>
						<li><a href="#">Shirts tops</a></li>
						<li><a href="#">Sarees</a></li>
						<li><a href="#">Kurthas</a></li>
						<li><a href="#">Tousers</a></li>
						<li><a href="#">T-shirts</a></li>
						<li><a href="#">Leggings</a></li>
						<li><a href="#">Accessories</a></li>


					</ul>

				</div>
				<div id="footWearWomen">
					<label class="headingLabel">Foot wear</label>
					<ul>
						<li><a href="#">New arrivals</a></li>
						<li><a href="#">Ethnic wear</a></li>
						<li><a href="#">Flats</a></li>
						<li><a href="#">Heels</a></li>
						<li><a href="#">Wedges</a></li>
						<li><a href="#">Sport shoes</a></li>
						<li><a href="#">Casual shoes</a></li>
						<li><a href="#">Boots</a></li>
						<li><a href="#">Formal shoes</a></li>


					</ul>

				</div>
				<div id="watchesWomen">
					<label class="headingLabel">Watches</label>
					<ul>
						<li><a href="#">Fast track</a></li>
						<li><a href="#">Casio</a></li>
						<li><a href="#">Titan</a></li>
						<li><a href="#">Fassi</a></li>
						<li><a href="#">Timex</a></li>
						<li><a href="#">Q&Q</a></li>
						<li><a href="#">Maxima </a></li>
						<li><label>Mens accessories</label></li>
						<li><a href="#">Bracelets</a></li>
						<li><a href="#">WristBands</a></li>

					</ul>


				</div>
				<div id="bagsWomen">
					<label class="headingLabel">Watches</label>
					<ul>
						<li><a href="#">Hand bags</a></li>
						<li><a href="#">Totes</a></li>
						<li><a href="#">Sing Bags</a></li>
						<li><a href="#">Back bags</a></li>
						<li><label>jewellery</label></li>
						<li><a href="#">ear rings</a></li>
						<li><a href="#">Pendants and Lockets </a></li>
						<li><label>Rings</label></li>
						<li><a href="#">Gift store</a></li>
						<li><a href="#">WristBands</a></li>

					</ul>


				</div>
				<div id="fragrencesWomen">
					<label class="headingLabel">the International<br>Beauty
						shop</label>
					<ul>
						<li><label>fragrences</label></li>
						<li><a href="#">perfumes</a></li>
						<li><a href="#">Deodrants</a></li>
						<li><a href="#">Body mests</a></li>
						<li><a href="#">Gift sets</a></li>
						<li><label>Beauty and wellness</label></li>
						<li><a href="#">skin care</a></li>
						<li><a href="#">Hair care </a></li>

						<li><a href="#">Make up</a></li>
						<li><a href="#">Bath & body</a></li>
						<li><a href="#">Kids and combos</a></li>

					</ul>


				</div>


			</div>
			<div id="boysMenu" class="contentModel">
				<label class="waterMark">Boys&Kids</label>
				<div id="noStock">Currently no Stock</div>
			</div>
		</div>

		<div id="addContainer">

			<div id="add-One">
				<img id="addImageOne" src="images/add.gif" alt="">
			</div>
			<div id="add-two">
				<img id="addImageTwo" src="images/globe.gif" alt="">
			</div>
			<div id="add-three">
				<img id="addImageThree" src="images/add3.png" alt="">
			</div>

		</div>
	</div>

</body>
</html>