<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication8.Register" %>

<!DOCTYPE html>

<html id="html" runat="server">
<head runat="server">
<title>Hotel Plaza</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Motel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery-1.11.1.min.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'>
   <!--//webfonts-->
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
<!-- banner -->
    	 <form id="form1" runat="server">
	<div class="banner1">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="Index.aspx">Hotel Plaza</a></h1>
				</div>
                	<nav class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                         
							<ul class="nav navbar-nav">
    
							
                          <li>  <asp:HyperLink  ID="HyperLink1" runat="server" meta:resourcekey="HyperLink1" Text="Home" NavigateUrl="~/Index.aspx"></asp:HyperLink>
                              </li>
								<li> <asp:HyperLink  ID="HyperLink2" runat="server"  Text="Rooms" NavigateUrl="~/Rooms.aspx"></asp:HyperLink></li>
                                <li> <asp:HyperLink  ID="HyperLink6" runat="server"  Text="Gallery" NavigateUrl="~/Gallery.aspx"></asp:HyperLink></li>
			
                                <li> <asp:HyperLink  ID="HyperLink4" runat="server"  Text="Profile" NavigateUrl="~/UserSettings.aspx"></asp:HyperLink></li>
								<li> <asp:HyperLink  ID="HyperLink3" runat="server"  Text="Sign In" NavigateUrl="~/SignIn.aspx"></asp:HyperLink></li>
                                <li> <asp:HyperLink  ID="HyperLink5" runat="server"  Text="Contact" NavigateUrl="~/Contact.aspx"></asp:HyperLink>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                            
                               <li> <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" BackColor="Black" ForeColor="White" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
                                  <asp:ListItem  Text="LNG" /> 
                                   <asp:ListItem Value="en-US" Text="English" />
                                   <asp:ListItem Value="fr-FR" Text="francais" />
                                   <asp:ListItem Value="hi-IN" Text="Hindi" />
                                      <asp:ListItem Value="ar-AE" Text="Arabic" />
                                   </asp:DropDownList></li>
           <li>     <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" BackColor="Black" ForeColor="White" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged1" >
                           <asp:ListItem  Text="Theme" />
                             <asp:ListItem Value="Theme 00" Text="Default" />
                               <asp:ListItem Value="Theme 01" Text="Theme 1" />
                              <asp:ListItem Value="Theme 02" Text="Theme 2" />
                            </asp:DropDownList></li>
							</ul>
                           
						</div>
						<!--/.navbar-collapse-->
			</nav>
				<div class="search-box">
					<div id="sb-search" class="sb-search">
						
					</div>
				</div>
					<div class="clearfix"> </div>


			</div>
		</div>
	</div>		
		<!-- banner -->
<!-- registration -->
     
	<div class="main-1">
		<div class="container">
			<div class="register">
	
				 <div class="register-top-grid">
                     
					<h3>
                        <asp:Label ID="Label13" runat="server" Text="PERSONAL INFORMATION"></asp:Label></h3>
              
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">

						   <span> <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></span>
					 <asp:TextBox ID="TxtFistName" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator0" controltovalidate="TxtFistName" errormessage="Please enter your First Name!"  ForeColor="Red"/>
                        
					 </div>

					 <div class="wow fadeInRight" data-wow-delay="0.4s">
					
                     <span> <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></span>
					 <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="TxtLastName" errormessage="Please enter your Last Name!"  ForeColor="Red"/>
					 </div>

					<div class="wow fadeInLeft" data-wow-delay="0.4s">
						
                    <span> <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label></span>
					 <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="TxtEmail" errormessage="Please enter your Email!"  ForeColor="Red"/>            
					 </div>

                      <div class="wow fadeInRight" data-wow-delay="0.4s">
                <span> <asp:Label ID="Label4" runat="server" Text="NIC No"></asp:Label></span>
						
					 <asp:TextBox ID="TxtNic" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="TxtNic" errormessage="Please enter your NIC!"  ForeColor="Red"/>       
					 </div>

				     <div class="wow fadeInLeft" data-wow-delay="0.4s">
                            <span> <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label></span>
					 <asp:TextBox ID="TxtAddr" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="TxtAddr" errormessage="Please enter your Address!"  ForeColor="Red"/>       
					 </div>

                       <div class="wow fadeInRight" data-wow-delay="0.4s">
                           <span> <asp:Label ID="Label6" runat="server" Text="Nationality"></asp:Label></span>
				
					 <asp:TextBox ID="TxtNation" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" controltovalidate="TxtNation" errormessage="Please enter your Nationality!"  ForeColor="Red"/>       
					 </div>

                          <div class="wow fadeInRight" data-wow-delay="0.4s">
                             <span> <asp:Label ID="Label7" runat="server" Text="Age"></asp:Label></span>
					
					 <asp:TextBox ID="txtAge" runat="server" ></asp:TextBox>
                                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6" controltovalidate="txtAge" errormessage="Please enter your Age!"  ForeColor="Red"/>       
					 </div>

                     
                          <div class="wow fadeInRight" data-wow-delay="0.4s">
                             <span> <asp:Label ID="Label8" runat="server" Text="ContactNo"></asp:Label></span>
						
					 <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator7" controltovalidate="TxtNation" errormessage="Please enter your ContactNO!"  ForeColor="Red"/>       
					 </div>

                     
                   <div class="wow fadeInRight" data-wow-delay="0.4s">
                             <span> <asp:Label ID="Label9" runat="server" Text="Security Question"></asp:Label></span>
						
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" type="text"  ForeColor="Black" BackColor="Gray">
                           <asp:ListItem  Text="None" />
                         <asp:ListItem Value="01" Text="What is your first pet Name? " />
                             <asp:ListItem Value="02" Text="who is your first teacher?" />
                             <asp:ListItem Value="03" Text="Where were you born?" />
                      </asp:DropDownList>
                       
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator8" controltovalidate="DropDownList1" errormessage="Please select your Question!"  ForeColor="Red"/>       
					 </div>

                 
                        <div class="wow fadeInRight" data-wow-delay="0.4s">
                              <span> <asp:Label ID="Label10" runat="server" Text="Answer"></asp:Label></span>
						
					    &nbsp;&nbsp; <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator9" controltovalidate="txtAnswer" errormessage="Please enter your Answer!"  ForeColor="Red"/>       
					 </div>

					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
		              </a>
					 </div>
				     <div class="register-bottom-grid">
						    <h3>
                                <asp:Label ID="Label14" runat="server" Text="LOGIN INFORMATION"></asp:Label></h3>
							 <div class="wow fadeInLeft" data-wow-delay="0.4s">
                                  <span> <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label></span>
							 <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
							 </div>
							 <div class="wow fadeInRight" data-wow-delay="0.4s">
								<span> <asp:Label ID="Label12" runat="server" Text="Confirm Password " ></asp:Label></span>
							 <asp:TextBox ID="TxtConfirmPassword" runat="server"></asp:TextBox>
							 </div>
					 </div>

			
				<div class="clearfix"> </div>
				<div class="register-but">
		              <div class="clearfix"> </div>
                    	<div class="submit-btn">
                     <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click1"/>
		</div>
                    </div>
           
             	
		   </div>

			 </div> 
	</div>
       </form>

<!-- registration -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-2 deco">
				<h4>
                    <asp:Label ID="lblnav" runat="server" Text="Navigation"></asp:Label></h4>
                <ul>
				<li><asp:HyperLink ID="HyperLink100" runat="server" Text="Home" NavigateUrl="~/Index.aspx"></asp:HyperLink></li>
				<li><asp:HyperLink ID="HyperLink101" runat="server" Text="Rooms" NavigateUrl="~/Rooms.aspx"></asp:HyperLink></li>
				<li><asp:HyperLink ID="HyperLink102" runat="server" Text="Sign In" NavigateUrl="~/SignIn.aspx"></asp:HyperLink></li> 
				<li><asp:HyperLink ID="HyperLink103" runat="server" Text="Contact" NavigateUrl="~/Contact.aspx"></asp:HyperLink></ul>
			</div>
			<div class="col-md-2 deco">
              
			</div>
			<div class="col-md-2 deco">
				<h4> <asp:Label ID="Labelsocl" runat="server" Text="Social"></asp:Label></h4>
				<div class="soci">
                    <ul>
					<li><a href="https://www.facebook.com/"><i class="f-1"> </i></a></li>
					<li><a href="https://twitter.com/?lang=en"><i class="t-1"> </i></a></li>
					<li><a href="https://plus.google.com"><i class="g-1"> </i></a></li>
                     
                   </ul>
				</div>
			</div>
			<div class="col-md-3 cardss">
				<h4>
                    <asp:Label ID="Labelpay" runat="server" Text="Payment Secure"></asp:Label></h4>
                <ul>        
				<li><i class="visa"></i></li>
				<li><i class="Master"></i></li>
				<li><i class="paypal"></i></li>
               </ul>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-3 pos">
		
			<audio  controls="controls"  loop="loop">  
              <source src="mp3/test1.mp3"/>  
                  <source src="mp3/test1.mp3" />  
                    </audio> 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="footer-bottom">
			<div class="container">
				<p>© 2016 HotelPlaza. All Rights Reserved | Design by CB005808 </p>
			</div>
		</div>
	<!-- footer -->
</body>
</html>