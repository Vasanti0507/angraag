<%-- 
    Document   : terms_and_conditions
    Created on : Jul 5, 2019, 4:37:57 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Angraag</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href='https://fonts.googleapis.com/css?family=Salsa' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            <img src="images/final.jpeg">
            <div class="path">
                <a href="home.html">Home</a>
                > Terms & Conditions
            </div>
            <h1>Terms & Conditions</h1>
            
            <%
                try
                {
                    Statement st=DBConnector.getStatement();
                    ResultSet rs=st.executeQuery("select * from tcpolicy");
            %>
            <ul class="content">
            <%
                    while(rs.next())
                    {
            %>   
                        <li><%=rs.getString(1)%></li>
            <%
                    }
                }
                catch(SQLException e)
                {
                    System.out.println(e);
                }
            %>
            </ul>
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

    </body>
</html>
