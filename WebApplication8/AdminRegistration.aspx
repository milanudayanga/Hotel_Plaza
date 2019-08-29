<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="WebApplication8.AdminRegistration" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  
     <style type="text/css">
        .txtbox
        {
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
           
        }
    </style>
</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />
                    </a>
                </div>
              
                 <span class="logout-spn" >
                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 
                    <li class="active-link">
                         <a href="AdminPanel.aspx" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                       </li>

                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Register Admin </h2>   
                    </div>
                </div>              
                <div class="main-1">
		<div class="container">
			<div class="register">
		 <form id="form1" runat="server">
				
                     
					<h3>PERSONAL INFORMATION</h3>
             

                <span>First Name<label>*</label></span>
                 <br />
					 <asp:TextBox ID="TxtFistName" cssclass="txtbox" runat="server" ></asp:TextBox>
                        
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1"     ControlToValidate="TxtFistName" runat="server" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
					 
                     <br />
					 
						<span>Last Name<label>*</label></span>
                <br />
					 <asp:TextBox ID="TxtLastName" cssclass="txtbox" runat ="server"></asp:TextBox>
					     <asp:RequiredFieldValidator ID="RequiredFieldValidator2"     ControlToValidate="TxtLastName" runat="server" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
				  <br />
						 <span>Email Address<label>*</label></span>
                <br />
					 <asp:TextBox ID="TxtEmail" runat="server" cssclass="txtbox" Width="300px"></asp:TextBox>
					      <asp:RequiredFieldValidator ID="RequiredFieldValidator3"   ControlToValidate="TxtEmail" runat="server" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />
                
						 <span>NIC No<label>*</label></span>
                <br />
					 <asp:TextBox ID="TxtNic" runat="server" cssclass="txtbox"></asp:TextBox>
				     <asp:RequiredFieldValidator ID="RequiredFieldValidator4"     ControlToValidate="TxtNic" runat="server" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />
						 <span>Age<label>*</label></span>
                <br />
					 <asp:TextBox ID="TxtAge"  runat="server" cssclass="txtbox"></asp:TextBox>
					
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5"     ControlToValidate="TxtAge" runat="server" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br />
						 <span>Address<label>*</label></span>
                <br />
					 <asp:TextBox ID="TxtAddr"  runat="server" cssclass="txtbox"></asp:TextBox>
					
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6"     ControlToValidate="TxtAddr" runat="server" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
		              </a>
					
             <br />
				     <div class="register-bottom-grid">
						    <h3>LOGIN INFORMATION</h3>
						
								<span>Password<label>*</label></span>
                            <br />
							 <asp:TextBox ID="TxtPassword" runat="server" cssclass="txtbox"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7"     ControlToValidate="TxtPassword" runat="server" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
							<br />
							
								<span>Confirm Password<label>*</label></span>
                            <br />
							 <asp:TextBox ID="TxtConfirmPassword" runat="server" cssclass="txtbox"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator8"     ControlToValidate="TxtConfirmPassword" runat="server" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
							

					 </div>
		
				<div class="clearfix"> </div>
				<div class="register-but">
		              <div class="clearfix"> </div>
                    	<div class="submit-btn">
               
                                         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" Width="100px" cssclass="txtbox" />
		</div>
                   </div>
             
             	   </form>
                
		   </div>

			 </div> 
	</div>         
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                          &copy;  2016 (CB005808)| Design by: <a href="http://binarytheme.com" style="color:#fff;"  target="_blank">www.HotelPlaza.com</a>
                </div>
        </div>
        </div>
          

</body>
</html>
