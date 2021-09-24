// isEmail to validate email on different cases
const isEmail = (email) => {
	let atSymbol = email.indexOf("@");
	let dot = email.lastIndexOf('.');

	if (atSymbol < 1)
		return false;

	if (dot <= atSymbol + 3) {
		return false;
	}

	if (dot === email.length - 1)
		return false;

	return true;

};

// checkEmail function define
const checkEmail = () => {
	if (document.getElementById('userInput1').value === '') {
		document.getElementById('erremail').innerHTML = " * Email field is Empty";
		document.getElementById('erremail').style.display = "block";
	} else if (isEmail(document.getElementById('userInput1').value) === false) {
		document.getElementById('erremail').innerHTML = " * Not a valid Email";
		document.getElementById('erremail').style.display = "block";
	} else {
		document.getElementById('erremail').style.display = "none";
	}
};

const checkPassword = () => {
	if (document.getElementById('userInput2').value !== document.getElementById('userInput3').value) {
		document.getElementById('errpassword').innerHTML = " * Email field is Empty";
		document.getElementById('errpassword').style.display = "block";

	} else {
		document.getElementById('errpassword').style.display = "none";
	}
};