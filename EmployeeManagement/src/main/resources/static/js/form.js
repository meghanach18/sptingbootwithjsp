alert("add Form");


	$('#form').validate({

		rules: {
			name: {
				required: true,
				minlength: 3,
				pattern: /^[a-zA-Z]{3,10}$/,
			},
			designation: {
				required: true,
				minlength: 2,
				pattern: /^[a-zA-Z]{2,20}$/,
			},
			grade: {
				required: true,
				pattern:/^[A-E]{1}[1-5]{1}$/,
			},
			address: {
				required:true,
				minlength:5,
				
			},
			phone: {
				required:true,
				minlength:10,
				maxlength:10,
				
			}
			
			
		},
		messages: {
			name: {
				required: "This field is Mandatory",
				minlength: "Name should be contain  atleast 3 characters",
				pattern:"Name should contain only Alphabet"
			},
			designation: {
				required: "This field is Mandatory",
				minlength: "Designation should have atleast 2 characters",
				pattern:"Designation should contain only Alphabet"
			},
			grade: {
				required: "This field is Mandatory",
				pattern: "Invalid pattern Enter valid Data"
			},
			address: {
				required: "This field is Mandatory",
				minlength: "address should have atleast 5 characters",
			},
			phone: {
				required: "This field is Mandatory",
				minlength: " phone should have atleast 10 characters",
				maxlength: " phone should have atleast 10 characters",
			},
			
			
		},
		submitHandler: function(form) {
			form.submit();
		}
	}
	);
