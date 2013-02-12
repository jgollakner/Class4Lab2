<%-- 
    Document   : thirdSideForm
    Created on : Feb 5, 2013, 4:57:56 PM
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
        <div>Enter the 2 known triangle dimensions!</div>

        <p><button onclick="window.location.href='index.jsp'">Go Back</button></p>

        <script type="text/javascript">
            function validateForm()
            {
                var a = document.forms["form1"]["sideA"].value;
                var b = document.forms["form1"]["sideB"].value;
                var notANum = "Please enter a valid number";
                var blankNum = "Field Cannot be blank"
                var outOfRange = "Enter a number between 1-500";
                
                if (a==""){
                    window.alert(blankNum);
                    return false;
                }
                if (isNaN(a)){
                    window.alert(notANum);
                    return false;
                }
                if (a<1||a>500){
                    window.alert(outOfRange);
                    return false;
                }
                if (b==""){
                    window.alert(blankNum);
                    return false;
                }
                if (isNaN(b)){
                    window.alert(notANum);
                    return false;
                }
                if (b<1||b>500){
                    window.alert(outOfRange);
                    return false;
                }
                
            }
            
        </script>

        <form id="form1" name="form1" method="POST" action="TriangleArea.do" onsubmit="return validateForm()">
            Side 1: <input type="text" name="sideA"><br>
            Side 2: <input type="text" name="sideB">

            <center>
                <input id="areaSubmit" name="areaSubmit" type="submit" value="Get Area">
            </center>

        </form>


        <h1>Here is the length of the missing side!</h1>

        <p>
            <%
                out.println("Side 1: " + request.getParameter("sideA"));
                out.println("</br>Side 2: " + request.getParameter("sideB"));

                Object output = request.getAttribute("area");
                double area = 0;
                if (output != null) {
                    area = (Double) output;
                    DecimalFormat df = new DecimalFormat("#.###");
                    out.println("</br>");
                    out.println("</br>Missing Side: " + df.format(area));
                } else {

                    out.println("Submit your answer for a result!");
                }
            %>
        </p>

    </body>
</html>
