<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    
<title>Login</title>
<script>
        function validation()
        {
            var x = document.getElementById("mailid").value;
            if(!checkID(x))
                {
                    alert("Incorrect e-mail ID syntax! Please check your input again");
                    return false;
                }
            var y = document.getElementById("passwd").value;
            if(y.length<8)
                {
                    alert("Password cannot be less than 8 characters");
                    return false;   
                }
            
            window.location = "http://localhost:8080/webapp-api/login?mail="+x+"password="+y; 
            return true;
        }
        function checkID(email)
        {
            var a = /\S+@\S+\.\S+/;
            return a.test(email);
        }
</script>
<style type='text/css'>
    body {
        background-image: 
url("https://www.crucial.com.au/blog/wp-content/uploads/2015/09/google-mail.jpg");
        background-repeat: no-repeat;
        background-position: center center;
        background-attachment: fixed;
        background-size: cover;
    }
    .Login {
        text-align: center;
        vertical-align: middle;
        background-color: white;
        width: 400px;
        display: block;
        margin-left: auto;
        margin-right: auto;
        opacity: 0.9;
        padding-top:5px;
        border-style:solid;
        border-color:#336699;
        border-width:1px;
        padding-left:3px;
        padding-bottom:10px;
    }

.appform{
    margin:auto;
    width: 400px;
    padding:10px;
    text-align: center;
 }
    #mailid {
        width: 25em; 
        height: 2em;
        text-align: center;
    }
    #pass {
        width: 25em; 
        height: 2em;
        text-align: center;
    }
    #submit {
        width: 25em;  
        height: 2em;
        text-align: center;
    }
</style></head>
<body>
<div class="appform">
    <img src="logo3.png" alt="" style="width:150px"></img>
<div class="Login">
<form onsubmit="return validation()" action="/webapp-api/login" method="post">            
	<p><input type="text" id="mail" name="mail" placeholder="Enter your e-mail ID" required="" /></p>
	<p><input type="password" id="password" name="password" placeholder="Password" required="" /></p>
	<p>
	<input type="submit" id="login"></p>
</form>
                    
<p><button onclick="window.location.href =
                  'http://validator.w3.org/check?uri=' + 
                  window.location.href">Validate XHTML</button></p>
<p><button onclick="window.location.href =
                  'http://jigsaw.w3.org/css-validator/validator?uri=' + 
                  window.location.href">Validate CSS</button></p>
    </div></div>
</body>
</html>
