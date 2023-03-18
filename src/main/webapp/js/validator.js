/**
 * 
 */
 function validate() {
	var u = document.getElementById("username").value;
	var p = document.getElementById("password").value;
	if(u =="") {
		alert("Plesae enter your username");
		return false;
	}
	if(p =="") {
		alert("Plesae enter your password");
		return false;
	}
	return true;
}