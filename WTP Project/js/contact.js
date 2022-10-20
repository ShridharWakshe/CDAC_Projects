
window.addEventListener('DOMContentLoaded',()=>{
    var data =[];
   
    document.querySelector('#submitbtn').addEventListener('click', function(){
        let na = document.getElementById("name").value;
		let em = document.getElementById("email").value;
		let ad = document.getElementById("address").value;
		let nu = document.getElementById("number").value;
		let fe = document.getElementById("feedback").value;
        


        let obj = {name:na,email:em,address:ad,number:nu, feedback:fe};
		data.push(obj);


        localStorage.setItem("dataarray",JSON.stringify(data));
        console.log(data);
        document.getElementById("change").innerHTML = "FeedBack Received!!";
       
    })

    document.querySelector('#feedbackbtn').addEventListener('click', function(){
        console.log(data);
        if(data.length>0){
            location.replace('feedback.html'); 
        }else{
            document.getElementById("change1").innerHTML = "NO Feedback Received";
        }
       
    })
});