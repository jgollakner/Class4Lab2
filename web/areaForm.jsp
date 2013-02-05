<%-- 
    Document   : areaForm
    Created on : Feb 5, 2013, 4:53:59 PM
    Author     : JoeGollakner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div>Enter Length and Width!</div>

        <p><button onclick="window.location.href='index.jsp'">Go Back</button></p>


        <script type="text/javascript">
            function validateForm()
            {
                var l = document.forms["form1"]["length"].value;
                var w = document.forms["form1"]["width"].value;
                var notANum = "Please enter a valid number";
                var blankNum = "Field Cannot be blank"
                var outOfRange = "Enter a number between 1-500";
                
                if (l==""){
                    window.alert(blankNum);
                    return false;
                }
                if (isNaN(l)){
                    window.alert(notANum);
                    return false;
                }
                if (l<1||l>500){
                    window.alert(outOfRange);
                    return false;
                }
                if (w==""){
                    window.alert(blankNum);
                    return false;
                }
                if (isNaN(w)){
                    window.alert(notANum);
                    return false;
                }
                if (w<1||w>500){
                    window.alert(outOfRange);
                    return false;
                }
                
            }
            
        </script>
        
        <form id="form1" name="form1" method="POST" action="SelectArea.do" onsubmit="return validateForm()">
            Length: <input type="text" name="length"><br>
            Width: <input type="text" name="width">
        
        <center>
                <input id="areaSubmit" name="areaSubmit" type="submit" value="Get Area">
            </center>
        
        </form>
    </body>
</html>
