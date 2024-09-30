function register(){
    
    var username = document.getElementById('username').value;
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

   const data =  {
        "username":username,
        "email":email,
        "password":password
        
          
          
    }
    fetch('http://localhost:5000/register',{
        method:'POST',
        body:JSON.stringify(data)
    }).then((res)=>{console.log(res);}).catch((err)=>{ console.log(err)});
    alert("register successful!");

    window.location.replace('http://localhost:5500/frontend/studentdetail.html')
    
}

function addRegisterDetail(){
    console.log("in addRegisterDetail");
    var first_name = document.getElementById('first_name').value;
    var last_name = document.getElementById('last_name').value;
    var birthay_day = document.getElementById('birthay_day').value;
    var birthday_month = document.getElementById('birthday_month').value;
    var birthday_year = document.getElementById('birthday_year').value;
    var email = document.getElementById('email').value;
    var mobile_number = document.getElementById('mobile_number').value;
    var genderList = document.querySelectorAll('input[name="gender"]');
    let gender;
    genderList.forEach((g)=> {
        if(g.checked){
            gender = g.value;
        }
        });
    var address = document.getElementById('address').value;
    
    const data =  {
        "first_name":first_name,
        "last_name":last_name,
        "birthay_day":birthay_day,
        "birthday_month":birthday_month,
        "birthday_year":birthday_year,
        "email":email,
        "mobile_number":mobile_number,
        "gender":gender,
        "address":address
    }

    fetch('http://localhost:5000/submit_form',{
        method:'POST',
        body:JSON.stringify(data)
    }).then((res)=>{console.log(res);}).catch((err)=>{ console.log(err)});
    alert("Student Registration successful!");

    window.location.replace('http://localhost:5500/frontend/jobportal.html')
    
}


function login(){
    var email = document.getElementById('login-email').value;
    var password = document.getElementById('login-password').value;

   const data =  {
        "email":email,
        "password":password
    }
    fetch('http://localhost:5000/login',{
        method:'POST',
        headers: {
            'Content-Type': 'application/json' // Set the content type to JSON
          },
        body:JSON.stringify(data)
    }).then((res)=>{ 
          return res.json();
    }).then((data)=>{
        console.log("data :: ",data);
        if(data['message'] ==="success" && data['studentDataFilled']=='true'){
            alert("Login successful!");
            window.location.replace('http://localhost:5500/frontend/jobportal.html')
        }else if(data['message'] ==="success" && data['studentDataFilled']=='false'){
            alert("Login successful!... fill the student details first");
            window.location.replace('http://localhost:5500/frontend/studentdetail.html')
        }
        
        else{
            alert("Login failed!");

        }
        
    });
   
    
    
}