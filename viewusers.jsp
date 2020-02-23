<%-- 
    Document   : viewusers
    Created on : 17 Feb, 2020, 11:24:13 PM
    Author     : NitishG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
<style>
header{
border: 1px solid pink;  
background-color:pink;  
padding:15px;  
border-radius:5px;  
}

footer{
    border: 1px solid pink;  
background-color:pink;  
padding:15px;  
border-radius:5px;
}
</style>

</head>
<body  text="black" style="background-color:powderblue;"     >

<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<header>  
    <a class="navbar-brand navbar-bg" ><img class="img-fluid float-right" src="logo.png" alt="logo"></a>
    <center><h2>User Management System</h2></center>  
    <img src="header3.jpg" alt="This is Header image" width="100%" height="150px"  /> 
<p>User management describes the ability for administrators to manage user access to various IT resources like systems, devices, applications, storage systems, networks, SaaS services, and more.
 User management is a core part to any directory service and is a basic security essential for any organization.. </p>  
</header><br>



<h1>Users List</h1>

<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New User</a><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


<footer style="margin-bottom:0px ">
      <p>Posted by: Nitish Giri</p>
      <p>Qualifications: Diploma in Computer Science & Engineering , 
          Pursuing B-Tech in Computer Science and Engineering</p>
      <p>Company : CrushIt Infotech Private Limited , Ghaziabad</p>
      <p>          Sector-12, 19th KM Stone, NH-24, Ghaziabad-201009, U.P.</p>
      
    <p>Contact information: <a href="mailto:someone@example.com">
  Nitishgiri30@gmail.com</a>.</p>
  
  
    <div class="search-text"> 
        <div class="container">
            <div class="row text-center">
             
               <div class="form">
                   <center>  
                       <h4>SIGN UP TO OUR NEWSLETTER</h4>
                    <form id="search-form" class="form-search form-horizontal">
                        <input type="text" class="input-search" placeholder="Email Address">
                        <button type="submit" class="btn-search">SUBMIT</button><br><br>
                   </center>
                    </form>
                </div>
            
            </div>         
        </div>     
    </div>
        
  
  
  
</footer><br>


</body>
</html>
