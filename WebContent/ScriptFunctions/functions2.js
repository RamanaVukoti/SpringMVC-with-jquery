$(document).ready(initialPageLoadings);

function initialPageLoadings() {

	buttonBindingsDefault();
	mainMenuMouseOverBindings();
	$("#loginform").on('load', focusFunction);
	/* $(window).on('beforeunload', pageClosingAlert); */

	$("#serchText").on('keyup change', showSuggestions);
	$("#images").on('click', 'img', imageToDisplayPage);
	$("#images").on('click', '.shopButton', imageToDisplayPage);
	//$("#registerButton").on('click',regSuccess);

}
/*-----------------initial page loading functions*----start-----------------------------*/

function buttonBindingsDefault() {

	var clickBinding = {
		loginButton : loginSuccess,
		registerButton : regSuccess

	};
	$.each(clickBinding, function(buttonID, respectiveMethod) {
		$("#" + buttonID).on('click', respectiveMethod);

	});
}
function mainMenuMouseOverBindings() {
	var mainMenuIds = [ "#labelMen", "#labelWomen", "#labelBoys",
			"#labelElectronics" ];
	$(mainMenuIds).each(function(i, item) {
		$(item).on('mouseover', showContetnt);

	});
}
function focusFunction() {

	document.loginForm.mailId.focus();
}
function pageClosingAlert() {

	return "hey buddy............ U want to close TechM e shopping";

}
/*-----------------initial page loading functions*----end-----------------------------*/

/*-----------------------------utility functions*--start-------------------------------*/
function hideSomeAndShowsome(hideList, showList) {
	$(hideList).each(function(i, item) {
		$(item).hide();
	});
	$(showList).each(function(i, item) {
		$(item).show();
	});
}
$.ajaxSetup({

	type : "post"

});
/*-----------------------------utility functions*--end-------------------------------*/
function showSuggestions() {
	/* alert(event.data.name); */
	var data = $(this).val();
	var data2 = "secondParam";/* just for doubt */

	/* alert(i); */
	$("#serchText").removeClass('addedText');
	$.ajax({

		url : projectName+"/searchItem.html",
		type : "post",
		data : "item=" + data + "&name2=" + data2,
		success : function(response) {
			var datt = $('</div>').append(response).find(".suggestion-label")
					.html();

			$("#suggestionImageDIv").hide();
			$("#suggestions").html(response);
			$("#suggestions").show();

		}

	});

}

function ramana() {
	alert("ramana");
	$.ajax({
		url : projectName+"/ramana.html",
		success : function(response) {
			alert("DDDDD");
		},
		error : function(exception) {

			alert("error in ramana");
		}

	});
}
function login() {

	var urll = projectName+"/Login.html";

	$.ajax({

		url : urll,
		success : function(response) {

			$("#loginHere").html(response);
			$("#loginHere").dialog({
				show : {
					effect : "blind",
					duration : 600
				},

				position : {
					my : "center",
					at : "center",
					of : window
				},
				dialogClass : 'loginDialog',
				title : "Login here",
				resizable : false,
				position : "center",
				modal : true,
				open : function() {
					$('.ui-widget-overlay').addClass('custom-overlay');
				},
				close : function() {
					$('.ui-widget-overlay').removeClass('custom-overlay');
				},
				maxHeight : 450,
				closeOnEscape : false,
				height : 300,
				width : 455,
				draggable : false
			/*
			 * buttons : [ { text : "cancel", click : function() {
			 * $("#loginHere").dialog("close"); } } ]
			 */

			});
			$("#cmmmsg").hide();

		},
		error : function(Exception) {
			alert("some error in login");
		}

	});

}
function register() {

	$("#commMsg").load("Register1.jsp");
	$("#commMsg").dialog({
		height : 400,
		title : "Register",
		width : 600,
		modal : true,
		open : function() {
			$('.ui-widget-overlay').addClass('custom-overlay');
		},
		close : function() {
			$('.ui-widget-overlay').removeClass('custom-overlay');
		}

	});
}
function loginSuccess() {
	$("#itemSucMes").hide();
	var url1 = projectName+"/Login.html";
	var content = $("#loginForm").serialize();

	$
			.ajax({
				url : url1,
				type : 'POST',
				data : content,

				success : function(response) {

					var number = $('<div />').append(response).find(
							'#logSuccess').html();

					if (number == 1) {

						var result = $('<div />').append(response).find(
								'#sessionVal').html();
						var commonMeessage = '<div id="commonMessage"><h3>hi <i><font color="aqua" size="15">'
								+ result
								+ '</font><i>....you are successfully logged in</h3><br><h4 id="h4">enjoy the e-shopping</h4></div>';

						$("#commMsg").html(commonMeessage);

						$("#loginId").attr('class', 'logedUser2');

						$(".logedUser2").html("Hi " + result);

						$("#signUpId").prop('disabled', true);
						$("#signUpId").attr('href', 'javascript://');

						$(".logedUser2").mouseover(function() {
							$("#userOptions").show();
						});
						$(".logedUser2").mouseout(function() {
							$("#userOptions").hide();
						});
						$("#userOptions").mouseout(function() {
							$("#userOptions").hide();
						});
						$("#userOptions").mouseover(function() {
							$("#userOptions").show();
						});

						$("#loginHere").dialog("close");
					}
					if (number == 0) {
						var y = "invalid credentials";
						login();
					}

				},

				error : function(error) {
					alert("error in loginSuccess");
				}
			});

}

function showContetnt() {
	var divName = $(this).attr('title');
	var hide = [ "#electronicsMenu", "#menMenu", "#womenMenu", "#boysMenu", ];
	var show = [ "#images", "#" + divName, ];
	hideSomeAndShowsome(hide, show);

	$("#" + divName).mouseover(function() {
		$("#" + divName).show();
	});
	$("#" + divName).mouseout(function() {

		$("#" + divName).hide();
	});

}
function hideContent() {
	var hide = [ "#electronicsMenu", "#menMenu", "#womenMenu", "#boysMenu" ];
	var show = [ "#images", "#image4" ];
	hideSomeAndShowsome(hide, show);

}
function regSuccess() {
	//alert(rr);
	var url = projectName+"/register.html";
	var content = $("#regForm").serialize();

	$.ajax({
		url : url,
		type : 'POST',
		data : content,
		success : function(response) {

			var message = $('<div />').append(response).find('#messageDiv')
					.html();
			var msg = '<font color="red" size="10">' + message + '</font>';
			$("#commMsg").html(msg);
		},
		error : function(Exception) {
			alert("errror regSuccess");
		}
	});

}

function showImages(imagesPath) {
	var hide = [ "#image4", "#electronicsMenu", "#menMenu", "#womenMenu",
			"#boysMenu", "#displayContainer", "#itemSucMes" ];
	var show = [ "#images" ];
	hideSomeAndShowsome(hide, show);

	$(".imagesClass").remove();

	var img = new Array(10);
	for ( var i = 1; i <= 8; i++)

	{
		img[i] = imagesPath + i + ".jpg";

		var imageRow2 = '<div class="imagesClass"><a href="#"><img id="im'
				+ i
				+ '" title="'
				+ img[i]
				+ '" src=""  ></a><div class="desc"><input type="submit" value="View Item" class="shopButton" id="'
				+ img[i] + '" ></div></div>';

		$("#images").append(imageRow2);

		var srcOfImage = img[i];
		$("#im" + i).attr('src', srcOfImage);
	}

}
function imageToDisplayPage() {

	var imagePath = $(this).attr('title');
	if (imagePath == null) {

		var imagePath = $(this).attr('id');
	}

	$.ajax({
		url : projectName+"/imagesSelection.html",
		data : "name=" + imagePath,
		type : "post",
		success : function(response) {

			$(".imagesClass").hide();

			$("#someText").html(response);
		}

	});
}

function imageToController(imagePath) {

	$("#image4").hide();

	$.ajax({
		type : "post",
		url : projectName+"/imagesBooking.html",
		data : "name=" + imagePath,

		success : function(response) {

			var messsge = $('<div />').append(response).find('#sucessParam')
					.html();

			$(".imagesClass").hide();

			if (messsge == 1) {

				alert("you have to LOGIN before add the item to cart");
			}

			$("#itemSucMes").html(response);
			if (messsge == null) {
				$("#itemSucMes").html('<h3>item added successfuly</h3>');
				$("#itemSucMes").show();

			}

		},
		error : function(Exception) {

			alert("some error  imageToController");
		}
	});

}

function lightBoxForLOgin() {
	$("#itemSucMes").load("lightBox.jsp");

}
function showCart() {
	alert("in view jsp");
	$.ajax({
		url : projectName+"/viewCart.html",
		success : function(response) {
			alert(response);
			$("#image4").html(response);
			$("#someText").hide();

		},
		error : function(Error) {

			alert(error in showCart);
		}

	});
}

function addText(data) {

	$("#serchText").addClass('addedText');
	$("#serchText").val(data);

	$("#suggestions").hide();
	$("#suggestionImageDIv").hide();
}
function searchItem() {
	var x = $("#serchText").val();
	alert("currently no stock of---> " + x + "");

}

function showImageforSuggestion(data) {

	$.ajax({

		url : projectName+"/showImageforItem.html",
		type : "post",
		data : "imageData=" + data,
		success : function(response) {

			$("#suggestionImageDIv").html(response);
			$("#suggestionImageDIv").show();
		}
	});
}

function hideTheImageDiv(data)

{

	$("#suggestionImageDIv").hide();
}