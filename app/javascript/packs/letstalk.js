let reason,fulName, email, comment, phone;

let form = document.querySelector('.contact_form');

if (form) {



	let other = document.querySelector('.other');
	let initial = document.querySelector('.initial');


	document.querySelector('select[name="other_option"]').onchange=changeEventHandler;



	function changeEventHandler(event) {
		document.querySelector('#outputreason').classList.remove("hidden")
	    if(event.target.value == "other") {
		    console.log('that is it');
		    other.classList.remove("hidden");
		    document.getElementById("reason_for_contact").onchange = function(event){
		    	reason = event.target.value
		    }
	    }
	    else {
	    	console.log('Selected ' + event.target.value ); 
	    	other.classList.add("hidden");
	    	reason = event.target.value;
	    }
	}

	// show initial
	document.querySelector('#outputinitial').addEventListener("click", function click(event) {
		console.log(reason)
		document.querySelector('.initial').classList.add("hidden")
		document.querySelector('.reason').classList.add("hidden")
		document.querySelector('.comment').classList.remove("hidden")

	}, false)

	// show comment
	document.querySelector('#outputcomment').addEventListener("click", function click(event) {
		console.log(reason)
		document.querySelector('.reason').classList.add("hidden")
		document.querySelector('.comment').classList.remove("hidden")
		document.querySelector('.initial').classList.add("hidden")

	}, false)


	// show reason
	document.querySelector('#outputreason').addEventListener("click", function click(event) {
		console.log(reason)
		document.querySelector('.reason').classList.add("hidden")
		document.querySelector('.comment').classList.add("hidden")
		document.querySelector('.initial').classList.remove("hidden")


	}, false)

	// send msg

	document.querySelector('#outputcomment').addEventListener("click", function send(event) {
		
		console.log("Sending msg ...")	
		
		document.querySelector('.first_unit').classList.add("hidden")
		document.querySelector('.thanks').classList.remove("hidden")

		fulName = document.querySelector('#full_name').value;

		let text = fulName;
		console.log(text)

		document.querySelector('.fullName').textContent = text;

		let f_email = document.querySelector('#email');
		let f_comment = document.querySelector('#msg').textContent;
		let f_phone = document.querySelector('#phone');


		email =  f_email.value;
		comment =  f_comment;
		phone =  f_phone.value;


	
		fetch('/newcomment', {
			method: 'post',
			body: JSON.stringify({
				full_name: fulName,
				email: email,
				reason: reason,
				comment: comment,
				phone: phone,
			}),
			headers: {
				'Content-Type': 'application/json',
				'X-CSRF-Token': Rails.csrfToken()
			},
			credentials: 'same-origin'
		}).then(function(response) {
			return response.json();
		}).then(function(data) {
			console.log(data);
		});


	}, false)


}



function allIsTrue(currentValue) {
	return currentValue == true
}