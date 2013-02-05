<%-- 
    Document   : circleAreaForm
    Created on : Feb 5, 2013, 4:57:11 PM
    Author     : JoeGollakner
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div>Enter The Radius</div>


        <p><button onclick="window.location.href='index.jsp'">Go Back</button></p>
        
        
        <script type="text/javascript">
            function validateForm()
            {
                var r = document.forms["form1"]["radius"].value;
                var notANum = "Please enter a valid number";
                var blankNum = "Field Cannot be blank"
                var outOfRange = "Enter a number between 1-500";
                
                if (r==""){
                    window.alert(blankNum);
                    return false;
                }
                if (isNaN(r)){
                    window.alert(notANum);
                    return false;
                }
                if (r<1||r>500){
                    window.alert(outOfRange);
                    return false;
                }             
            }
            
        </script>
        

        <form id="form1" name="form1" method="POST" action="SelectRadius.do" onsubmit="return validateForm()">
            Radius: <input type="text" name="radius"><br>

            <center>
                <input id="radiusSubmit" name="radiusSubmit" type="submit" value="Get Radius">
                
                <h1>Here are the results of your Circle Area Calculation!</h1>


        <p>
            <%

                Object output = request.getAttribute("area");
                DecimalFormat df = new DecimalFormat("#.###");
                out.print("Area of your circle: " + (df.format(output)));

            %>
        </p>
            </center>

        </form>
        
        
        
        
    </body>
</html>
