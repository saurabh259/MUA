<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>     
<title>Inbox</title>
		
<script>
		function deleteRow(inbox)  {
        var table = document.getElementById(inbox).tBodies[0];
        var rowCount = table.rows.length;
        // var i=1 to start after header
        for(var i=0; i<rowCount; i++) {
            var row = table.rows[i];
            // index of td contain checkbox is 8
            var chkbox = row.cells[0].getElementsByTagName('input')[0];
            if(null != chkbox.type && true == chkbox.checked) {
                table.deleteRow(i);
				rowCount--;
				i--;
             }
        }
}
</script>
        <style type='text/css'>
        body {
            color: white;
            font-family: sans-serif;
            font-size: 25px;
        }
        
        .nav {
            background-color: #dd4b39;
            text-align: center;
            width: 200px;
            height: 100%;
            position: fixed;
            top:0px;
            left:0px; 
        }
              .button {
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; 
    transition-duration: 0.4s;
    cursor: pointer;
}
.button1 {
    background-color: #dd4b39; 
    font-family: sans-serif;
    font-size: 25px;
    color: white; 
    border: 2px solid #dd4b39;
}
.button1:hover {
    background-color: #4CAF50;
    color: white;
}
.button2 {
    background-color: #dd4b39; 
    font-family: sans-serif;
    font-size: 25px;
    color: white; 
    border: 2px solid #dd4b39;
}
.button2:hover {
    background-color: #008CBA;
    color: white;
}
.button3 {
    background-color: #dd4b39; 
    font-family: sans-serif;
    font-size: 25px;
    color: white; 
    border: 2px solid #dd4b39;
}
.button3:hover {
    background-color: #FFC0CB;
    color: white;
}
.button4 {
    background-color: #dd4b39;
    font-family: sans-serif;
    font-size: 25px;
    color: white; 
    border: 2px solid #dd4b39;
}
.button4:hover {
    background-color: #FFA500;
    color: white;
        }
.button5 {
    background-color: #dd4b39;
    font-family: sans-serif;
    font-size: 25px;
    color: white; 
    border: 2px solid #dd4b39;
}
.button5:hover {
    background-color: #555555;
    color: white;
}
            
.button6 {
    background-color: #dd4b39;
    font-family: sans-serif;
    font-size: 25px;
    color: white; 
    border: 2px solid #dd4b39;
}
.button6:hover {
    background-color: #c0c0c0;
    color: white;
}
        
            .navbtn {
                background:none;
                border:none;
                margin:0;
                padding:0;
            }
            .mailList {
                color: black;
                font-family: sans-serif;
                font-size: 15px;
                top: 0;
                margin-top: 0%;
                margin-left:220px;
                border-style:solid;
                border-color:#336699;
                border-width:1px;
                padding-left:3px;
                padding-bottom:10px;
                height: 500px;
                width: 700px;
                display: inline-block;
    max-width: 700px;
    padding: 10px;
    word-break: break-all;
            }
            .delBTN {
                top: 0;
                margin-top: 0%;
                margin-left:220px;
            }
        </style>
    </head>
    
<body>   
<div class="nav">
                       <button class="button button1" onclick="location.href='compose.xhtml'">Compose</button>
           <button class="button button2" onclick="location.href='inbox.xhtml'">Inbox</button>
           <button class="button button3" onclick="location.href='read.xhtml'">Read</button>
            <button class="button button4" onclick="window.location.href =
                  'http://validator.w3.org/check?uri=' + 
                  window.location.href">Validate XHTML</button>
            <button class="button button6" onclick="window.location.href =
                  'http://jigsaw.w3.org/css-validator/validator?uri=' + 
                  window.location.href">Validate CSS</button>
           <button class="button button5" onclick="location.href='index.xhtml'">Logout</button>
        </div>
        
<div class="delBTN">
            <button type="button" onclick="deleteRow('inbox')"><img src="https://docs.qgis.org/testing/en/_images/mActionDeleteSelected.png" height="25" width="25" alt="" /></button>
        </div>
            
<div class="mailList">
                
<table id="inbox">
                    
<!-- <tbody> -->
<!-- <tr> -->
                        
<!-- <td><input type="checkbox" /></td> -->
                        
<!-- <td class="from">abc@hw.ac.uk</td> -->
                        
<!-- <td class="subj"><b>    Testing1    </b></td> -->
                        
<!-- <td class="date">    1 day ago</td> -->
<!--                     </tr> -->
                    
<!-- <tr> -->
<!-- <td></td>                    -->
<!-- <td><input type="checkbox" /></td> -->
                        
<!-- <td class="from">xyz@hw.ac.uk</td> -->
                        
<!-- <td class="subj"><b>    Testing2</b></td> -->
                        
<!-- <td class="date">    5 mins ago</td> -->
<!--                     </tr> -->
<!--                 </tbody> -->

<%

for(int i=0;i<10;i++){
	out.write("<tr><td>1</td></tr>");
}

%>
</table>
            </div>
    
</body></html>
