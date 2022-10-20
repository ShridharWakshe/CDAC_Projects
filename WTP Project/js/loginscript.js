document.querySelector('.img-btn').addEventListener('click', function()
	{
		document.querySelector('.cont').classList.toggle('s-signup')
	}
)
window.addEventListener('DOMContentLoaded',()=>{

    var data =[
          {name:"Shri",email:"username",password:"password"},
          {name:"123",email:"1234",password:"12345"}];


		  console.log(data.toString());

    document.querySelector('.submit').addEventListener('click', function()
	{
		let un = document.getElementById("email").value;
		let pw = document.getElementById("password").value;
		let valid = false;
		

		if(un=="" || pw==""){
			document.getElementById("change2").innerHTML = "Enter Valid Details";
		}else{
			for(let i = 0; i<data.length;i++){
				console.log("hello");
					if ((un == data[i].email) && (pw == data[i].password)) {
					valid = true;
					break;
					}
		}
      
    }

		if (valid) {
			alert ("Login was successful");
			location.replace('index.html');
			return false;
		}else{
			alert ("Invalid username and/or password. ");
			//document.myform.email.value = "";
			//document.myform.password.value = "";
		}
	}
)

document.querySelector('.submit2').addEventListener('click', function()
	{
        let na = document.getElementById("name1").value;
        let un = document.getElementById("email1").value;
	    let pw = document.getElementById("password1").value;
		
        console.log(na);

		if(na=="" || un=="" || pw==""){
			document.getElementById("change1").innerHTML = "Enter Valid Details";
		}else{
			let obj = {name:na,email:un,password:pw};
			data.push(obj);
			document.getElementById("change").innerHTML = "Account created!!";
			document.getElementById("change1").innerHTML = "";
		}
    }) 
  });


