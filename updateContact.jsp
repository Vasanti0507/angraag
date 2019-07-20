<%-- 
    Document   : updateContact
    Created on : Jul 13, 2019, 1:58:35 PM
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
                ResultSet rs=st.executeQuery("select * from contactus");
                
                if(rs.next())
                {
        %>
        <form action="UpdateContact" method="post">
            <h1>Update Contact Us</h1>
            <table>
                <tr>
                    <td> Address : </td>
                    <td><textarea name="address" rows="3" cols="20"><%=rs.getString(1)%></textarea></td>
                </tr>
                <tr>
                    <td> Contact number : </td>
                    <td><input type="text" name="contact" value="<%=rs.getString(2)%>"></td>
                </tr>
                <tr>
                    <td> Email : </td>
                    <td><input type="text" name="email" value="<%=rs.getString(3)%>"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="update"></td>
                </tr>
            </table>
        </form>
        <%
                }
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
        %>
    </body>
</html>
