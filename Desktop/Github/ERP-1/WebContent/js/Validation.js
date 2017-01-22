function check_firstname(uname) {
	
	var User = /^[a-zA-Z'_]+$/;
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("userfirstname").innerHTML = "First Name should not be blank";
		uname.style.background = 'white';
		document.getElementById("userfirstname").style.color='black';
	} else if (!User.test(uname.value)) {
		document.getElementById("userfirstname").innerHTML = "Enter Valid Character";
		uname.style.background = 'white';
	}
	else
		document.getElementById("userfirstname").innerHTML = "";	
	
}

function caname(uname) {
	
	var User = /^[a-zA-Z'_]+$/;
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("compname").innerHTML = "Company Name should not be blank";
		uname.style.background = 'white';
		document.getElementById("compname").style.color='black';
	} else if (!User.test(uname.value)) {
		document.getElementById("compname").innerHTML = "Enter valid name";
		uname.style.background = 'white';
	}
	else
		document.getElementById("compname").innerHTML = "";	
	
}
function eduval(uname) {
	
	var User = /^[a-zA-Z'_]+$/;
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("eduvalidation").innerHTML = "Education should not be blank";
		uname.style.background = 'white';
		document.getElementById("eduvalidation").style.color='black';
	} else if (!User.test(uname.value)) {
		document.getElementById("eduvalidation").innerHTML = "Enter valid value";
		uname.style.background = 'white';
	}
	else
		document.getElementById("eduvalidation").innerHTML = "";	
	
}

function check_lastname(uname) {
	
	var User = /^[a-zA-Z'_]+$/;
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("userlastname").innerHTML = "Last Name should not be blank";
		uname.style.background = 'white';
		document.getElementById("userlastname").style.color='black';
	} else if (!User.test(uname.value)) {
		document.getElementById("userlastname").innerHTML = "Enter Valid Character";
		uname.style.background = 'white';
	}
	else
		document.getElementById("userlastname").innerHTML = "";		
}

function de(uname) {
	
	var User = /^[a-zA-Z'_]+$/;
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("designation").innerHTML = "Designation should not be blank";
		uname.style.background = 'white';
		document.getElementById("designation").style.color='black';
	} else if (!User.test(uname.value)) {
		document.getElementById("designation").innerHTML = "Please Enter Valid Designation";
		uname.style.background = 'white';
	}
	else
		document.getElementById("designation").innerHTML = "";		
}

function check_usermobile(uname) {
	/*var uname = document.getElementById("contact");
*/
	
	var User =/^\d{10}$/;
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("usermobile").innerHTML = "Mobile Number should not be blank";
		uname.style.background = 'white';
		document.getElementById("usermobile").style.color='black';
	} else if (!(uname.value.match(User)))
		 {
		document.getElementById("usermobile").innerHTML = "Enter Valid Mobile Number";
		document.getElementById("usermobile").style.color='black';
		uname.style.background = 'white';
	}
	else
		document.getElementById("usermobile").innerHTML = "";			
}

function check_address(uname) {
		
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("useraddress").innerHTML = "Address should not be blank";
		uname.style.background = 'white';
		document.getElementById("useraddress").style.color='black';
	
	}
	else
		document.getElementById("useraddress").innerHTML = "";	
}	
function otherdata(uname) {
	
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("otherinfo").innerHTML = "Address should not be blank";
		uname.style.background = 'white';
		document.getElementById("otherinfo").style.color='black';
	
	}
	else
		document.getElementById("otherinfo").innerHTML = "";	
}	


function check_uname(uname) {
		/*var uname = document.getElementById("username");
*/
	/*alert(uname.value);*/
	
		//var User = /^[a-zA-Z'_]+$/;
	    uname.style.background = '#666';
		if (uname.value == '') {
			document.getElementById("usermsg").innerHTML = "User Name should not be blank";
			uname.style.background = 'red';
			document.getElementById("usermsg").style.color='red';
		}/* else if (!User.test(uname.value)) {
			document.getElementById("usermsg").innerHTML = "Enter Valid Character";
			//uname.style.background = 'red';
		}*/
		else
			{
			document.getElementById("usermsg").innerHTML = "";
			}
	}

function check_password(uname) {
	/*var uname = document.getElementById("password");*/
	/*alert("Error"+uname.value);*/
	//var User = /^[a-zA-Z'_]+$/;
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("userpass").innerHTML = "Password should not be blank";
		uname.style.background = 'white';
		document.getElementById("userpass").style.color='black';
	} /*else if (!User.test(uname.value)) {
		document.getElementById("userpass").innerHTML = "Enter Valid Character";
		//uname.style.background = 'red';
	}*/
	else
		document.getElementById("userpass").innerHTML = "";
}

function check_confirm_password(uname) {
	/*var uname = document.getElementById("confirm_password");*/
	
    var upass=document.getElementById("password");
    
    uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("usercpass").innerHTML = "Confirm password should not be blank";
		uname.style.background = 'white';
		document.getElementById("usercpass").style.color='black';
	}else if(uname.value!=upass.value)
		{
		document.getElementById("usercpass").innerHTML = "Password & Confirm password must be same";
	uname.style.background = 'white';
	document.getElementById("usercpass").style.color='black';
		}
	else
		document.getElementById("usercpass").innerHTML = "";


	//var pass = document.getElementById("new_pass");
    //var rep = document.getElementById("rep");
    //if (rep.value == '') {
      // alert("Enter Password");
       //rep.style.background = 'red';
    //} else if (pass.value != rep.value) {
      // alert("Enter Same Password");
       //rep.style.background = 'red';
    //}
	
		
}

//check_useremail()
function check_useremail(uname) {
	/*var uname = document.getElementById("email");*/
	
	var User = /^[a-zA-Z0-9.-_]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
	uname.style.background = 'white';
	if (uname.value == '') {
		document.getElementById("useremail").innerHTML = "Email ID should not be blank";
		uname.style.background = 'white';
		document.getElementById("useremail").style.color='black';
	} else if (!User.test(uname.value)) {
		document.getElementById("useremail").innerHTML = "Please Enter a Valid Email id";
		uname.style.background = 'white';
		document.getElementById("useremail").style.color='black';
	}
	else
		document.getElementById("useremail").innerHTML = "";
}


function  check_selectDate() {
var userDate=document.getElementById("day");
alert(userDate.value);
    if (userDate.value == 0) {
 
    	alert("select day");
     }
}
function  check_selectMonth() {
	var userDate=document.getElementById("month");
	
	    if (userDate.value == 0) {
	    	
	    	alert("select month");
	     }
	}

function  check_selectYear() {
	var userDate=document.getElementById("year");
	
	    if (userDate.value == 0) {
	    	
	    	alert("select Year");
	     }
	}

