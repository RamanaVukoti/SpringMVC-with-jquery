function input(i)
{
	
if(i.value==i.defaultValue)
{
	 i.style.color="#000";  
	i.value="";
	 
}
}

function output(i)
{
	
	if(i.value="")
		{
		i.value=i.defaultValue;
		
		}
	}

function loginFormSubmition()
{
	alert("rrrrrrr");
	var dataAll=$("#loginForm").serialize();
	alert(dataAll);
	$.ajax({
	
		type:"post",
		url:"/Example7/login.html",
		data:dataAll,
		success:function(response)
		{
			
			$("#dialogBox").html(response);
			$("#dialogBox").dialog();
			
		},
	error: function (xhr, ajaxOptions, thrownError) {
        alert("Error");
        alert(thrownError);
	}
	});
	
}

function showDiv()
{
	alert("ffffffff");
	$("#invalid").show();
}