<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdateUserDtl.aspx.cs" Inherits="WebApplication8.AdminUpdateUserDtl" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
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
                 

 <li >
                        <a href="index.html" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>
                   
</ul>
                </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Manage Users</h2>   
                    </div>
                </div>              
                  <form id="form1" runat="server">
    <div>
                    <h3>PERSONAL INFORMATION</h3>

      
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						   <span>First Name<label>*</label></span>
					 <asp:TextBox ID="TxtFistName" runat="server"></asp:TextBox>
					 </div>

					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span>Last Name<label>*</label></span>
					 <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>
					 </div>

			  
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>NIC No<label>*</label></span>
					 <asp:TextBox ID="TxtNic" runat="server"></asp:TextBox>
					 </div>

                       <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Age<label>*</label></span>
					 <asp:TextBox ID="TxtAge"  runat="server"></asp:TextBox>
					 </div>

                       <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Address<label>*</label></span>
					 <asp:TextBox ID="TxtAddr"  runat="server"></asp:TextBox>
					 </div>

                     <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Registerd Date<label>*</label></span>
					 <asp:TextBox ID="txtDate"  runat="server"></asp:TextBox>
					 </div>

                     <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Selected Question No<label>*</label></span>
					 <asp:TextBox ID="txtquize"  runat="server"></asp:TextBox>
					 </div>

                     <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Answer<label>*</label></span>
					 <asp:TextBox ID="txtAnswer"  runat="server"></asp:TextBox>
					 </div>
                     <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Nation<label>*</label></span>
					 <asp:TextBox ID="txtNation"  runat="server"></asp:TextBox>
					 </div>

                        <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Contact No<label>*</label></span>
					 <asp:TextBox ID="txtContact"  runat="server"></asp:TextBox>
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
		              </a>
					 </div>
				     <div class="register-bottom-grid">
						    <h3>LOGIN INFORMATION</h3>

                          <div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>Emali<label>*</label></span>
							 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
							 </div>

							 <div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>Password<label>*</label></span>
							 <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
							 </div>
					 </div>
    	<div class="clearfix"> </div>
				<div class="register-but">
		              <div class="clearfix"> </div>
                    	<div class="submit-btn">
                            <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" OnClick="btnUpdate_Click"/>
                            </div>
		</div>
    </form>      
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
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>

