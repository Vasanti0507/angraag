<%-- 
    Document   : updateAboutUs
    Created on : Jul 16, 2019, 12:02:08 PM
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
        <link href="style.css?version=1" rel="stylesheet">    
    </head>
    <body>
        
        <%
            try
            {
                Statement st=DBConnector.getStatement();
                ResultSet rs=st.executeQuery("select description from policies where catagory='aboutus'");
                
        %>
        <form action="UpdateAboutUs" method="post" class="form">
            <h1>Update About Us</h1>
            <table>
                <%
                    while(rs.next())
                    {
                %>
                <tr>
                    <td><textarea name="msg" rows="10" cols="50"><%=rs.getString(1)%></textarea></td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <td><input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
        <%
                
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
        %>
    </body>
</html>
