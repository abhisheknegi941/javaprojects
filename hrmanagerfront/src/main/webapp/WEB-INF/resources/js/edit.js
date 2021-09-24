/**
 * 
 */
const checkAlphabet = (name) =>{

   let letters = /^[A-Za-z]+$/;
   if(name.match(letters))
     {
      return true;
     }
   else
     {
     return false;
     }	
}

const checkName = () =>{
	if (document.getElementById('empName').value === '') {
		document.getElementById('errname').innerHTML = " * Email field is Empty";
		document.getElementById('errname').style.display = "block";
	} else if (!checkAlphabet (document.getElementById('empName').value)) {
		document.getElementById('errname').innerHTML = " *Please Enter only Alphabets:";
		document.getElementById('errname').style.display = "block";
	} else {
		document.getElementById('errname').style.display = "none";
	}
};


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
	if (document.getElementById('empEmail').value === '') {
		document.getElementById('erremail').innerHTML = " * Email field is Empty";
		document.getElementById('erremail').style.display = "block";
	} else if (isEmail(document.getElementById('empEmail').value) === false) {
		document.getElementById('erremail').innerHTML = " * Not a valid Email";
		document.getElementById('erremail').style.display = "block";
	} else {
		document.getElementById('erremail').style.display = "none";
	}
};

const checkDate = () =>{
	if (document.getElementById('empDob').value === '') {
		document.getElementById('errdate').innerHTML = " * Email field is Empty";
		document.getElementById('errdate').style.display = "block";
	} else if (document.getElementById('empDob').value.length < 10) {
		document.getElementById('errdate').innerHTML = " *Please Enter Date in given format dd/mm/yyyy:";
		document.getElementById('errdate').style.display = "block";
	} else if (document.getElementById('empDob').value.length > 10) {
		document.getElementById('errdate').innerHTML = " * Please Enter Date in given format dd/mm/yyyy:";
		document.getElementById('errdate').style.display = "block";
	}   else {
		document.getElementById('errdate').style.display = "none";
	}
};