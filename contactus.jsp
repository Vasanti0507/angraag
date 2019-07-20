<%-- 
    Document   : contactus
    Created on : Jul 5, 2019, 11:36:29 AM
    Author     : Lenovo
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Angraag</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href='https://fonts.googleapis.com/css?family=Salsa' rel='stylesheet'>
        <link href="style.css?version=1" rel="stylesheet">
        
    </head>
    <body>
        <header>
            <img src="images/logoo4.jpeg" class="logo">
            <div id="profile">
                <a>
                    <i class="fa fa-heart-o"></i>
                    Wishlist
                </a>
                <a>
                    <i class="fa fa-shopping-cart"></i>
                    Shopping Cart
                </a>
                <a href="login.html">
                    <i class="fa fa-user-circle-o"></i>
                    Login/Register
                </a>
            </div>
        </header>
        <nav>
            <a href="newArrivals.html">New Arrivals</a>
            <a href="#">Suit Sets</a>
            <a href="#">Lehengas</a>
            <a href="#">Maxi Dresses</a>
            <a href="#">Short Dresses/Tops</a>
            <a href="#">Kurta/Twin Sets</a>    
            <a href="#">Jump Suits</a>
            <a href="#">Under 1499/-</a>
            <a href="#">Sale</a>
        </nav>
        <main>
            <div id="googleMap" style="width:100%;height:400px;"></div>
            <img src="images/final.jpeg">
            <%
                    try
                    {
                        Statement st=DBConnector.getStatement();
                        ResultSet rs=st.executeQuery("select * from contactus");
                        if(rs.next())
                        {
                %>
            <div class="content">
                Feel free to contact us @ <br/> 
                <%=rs.getString(1)%> <br/>
                You can call us on <font color="#600080"><%=rs.getString(2)%></font> <br/> 
                Or mail us at <font color="#600080"><%=rs.getString(3)%></font>
            </div>
                <%
                        }
                    }
                    catch(SQLException e)
                    {
                        System.out.println(e);
                    }
                %>
            <div>
                <h1>CONTACT FORM</h1>
                <form class="form" action="ContactUs" method="post">
                    <table>
                        <tr>
                            <td>Your Name :</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="name" size="50"></td>
                        </tr>
                        <tr>
                            <td>Your Phone * :</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="contact" size="50" required></td>
                        </tr>
                        <tr>
                            <td>Your Email * :</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="email" size="50" required></td>
                        </tr>
                        <tr>
                            <td>Your Comment :</td>
                        </tr>
                        <tr>
                            <td><textarea name="msg" cols="50" rows="5" maxlength="500"></textarea></td>
                        </tr>
                        <tr>
                            <td><input type="submit" class="button"></td>
                        </tr>
                    </table>
                </form>
            </div>
            <img src="images/final.jpeg">
        </main>
        <footer>
            <div style="width: 200px; float: left; text-align: left; text-indent: 0px;">
                <b>Customer Service</b> <br/>
                <a href="contactus.jsp">Contact Us</a> <br/>
            </div>
            <div style="width: 300px; float: left; text-align: left;">
                <b>Information</b> <br/>
                <a href="aboutus.jsp">About Us</a> <br/>
                <a href="exchange-and-refund-policy.jsp">Exchange & Shipping Policy</a> <br/>
                <a href="terms_and_conditions.jsp">Terms & Conditions</a> <br/>
                <a href="privacy_policy.jsp">Privacy Policy</a> <br/>
                <a href="disclaimer.jsp">Disclaimer</a> <br/>
                <a href="courier.jsp">Courier</a> <br/>
            </div>
            <div style="width: 200px; float: left; text-align: left;">
                <b>My Account</b> <br/>
                <a>My Account</a> <br/>
                <a>Wish List</a> <br/>
                <a>Track Order</a> <br/>
            </div>
            
            <br/>
            <form style="font-size: 18px; padding: 20px;">
                Subscribe Now :
                <input type="text" placeholder="Enter Your Email Address" size="25">
                <input type="submit" value="subscribe">
            </form>
            <a href="https://www.facebook.com/Angraag-355145051860113/" style="font-size: 35px;"><i class="fa fa-facebook-square"></i></a>
            <a href="https://www.instagram.com/angraag_/?hl=en" style="font-size: 35px;"><i class="fa fa-instagram"></i></a>
            <a href="#gplus" style="font-size: 35px;"><i class="fa fa-google-plus-square"></i></a>
            <a href="#pinterest" style="font-size: 35px;"><i class="fa fa-pinterest-square"></i></a>
            <a href="#twitter" style="font-size: 35px;"><i class="fa fa-twitter-square"></i></a>
            <a href="#youtube" style="font-size: 35px;"><i class="fa fa-youtube-play" ></i></a>
        </footer>
        <script>
            function myMap() 
            {
                var mapProp= {
                center:new google.maps.LatLng(51.508742,-0.120850),
                zoom:5,
            };
            var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>
    </body>
</html>
