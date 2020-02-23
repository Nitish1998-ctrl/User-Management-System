<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
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
border-radius:10px;
}
</style>

</head>
<body text="black" style="background-color:powderblue;"   >
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>

<header>  
    <a class="navbar-brand navbar-bg" ><img class="img-fluid float-right" src="logo.png" alt="logo"></a>
    <center><h2>User Management System</h2></center>  
    <img src="header4.jpg" alt="This is Header image" width="100%" height="200px"  /> 
<p>User management describes the ability for administrators to manage user access to various IT resources like systems, devices, applications, storage systems, networks, SaaS services, and more.
 User management is a core part to any directory service and is a basic security essential for any organization.. </p>  
</header><br>


<h1>Edit Form</h1>
<form action="edituser.jsp" method="post">

        Id:<input type="number" name="id" style="margin-left: 10px " value="<%=u.getId() %>"/><br><br>
        Name:<input type="text" name="name" style="margin-left:10px " value="<%= u.getName()%>"/><br><br>
        Password:<input type="password" name="password" style="margin-left:10px"  value="<%= u.getPassword()%>"/><br><br>
        Email:<input type="email" name="email" style="margin-left:10px"   value="<%= u.getEmail()%>"/><br><br>
        Sex:<input type="radio" name="sex" value="male"/>Male <input type="radio" name="sex" value="female"/>Female<br><br> </td></tr>
        Country:<select name="country" style="margin-left: 10px" >
<option>India</option>
<option>Pakistan</option>
<option>Afghanistan</option>
<option>China</option>
<option>Other</option>
</select><br><br>
    
<tr><td colspan="2"><input type="submit" value="Edit User" onclick="verify()"/><br><br><br><br><br><br></td></tr>
</form>


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


<script language="javaScript">
    function verify()
{
 
  alert('Update SuccessFully ');
 
}
</script>

</body>
</html>