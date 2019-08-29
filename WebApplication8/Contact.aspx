<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication8.Contact" %>

<!DOCTYPE html>

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
                      <asp:Label ID="lbl1" runat="server" Text="Label" ForeColor="White" Font-Size="Small"></asp:Label>
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
						<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                         
							<ul class="nav navbar-nav">
    
							
                        <li>   <asp:HyperLink  ID="HyperLink1" runat="server" meta:resourcekey="HyperLink1" Text="Home" NavigateUrl="~/Index.aspx"></asp:HyperLink></li>
                                
								<li> <asp:HyperLink  ID="HyperLink2" runat="server"  Text="Rooms" NavigateUrl="~/Rooms.aspx"></asp:HyperLink></li>
                                <li> <asp:HyperLink  ID="HyperLink6" runat="server"  Text="Gallery" NavigateUrl="~/Gallery.aspx"></asp:HyperLink></li>
			
                                <li> <asp:HyperLink  ID="HyperLink4" runat="server"  Text="Profile" NavigateUrl="~/UserSettings.aspx"></asp:HyperLink></li>
								<li> <asp:HyperLink  ID="HyperLink3" runat="server"  Text="Sign In" NavigateUrl="~/SignIn.aspx"></asp:HyperLink></li>
                                	<li class="active" >
                             <asp:HyperLink  ID="HyperLink5" runat="server"  Text="Contact" NavigateUrl="~/Contact.aspx"></asp:HyperLink>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        
                               <li> <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" BackColor="Black" ForeColor="White" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                                  <asp:ListItem Value="" Text="LNG" /> 
                                   <asp:ListItem Value="en-US" Text="English" />
                                   <asp:ListItem Value="fr-FR" Text="French" />
                                   <asp:ListItem Value="hi-IN" Text="Hindi" />
                                      <asp:ListItem Value="ar-AE" Text="Arabic" />
                                   </asp:DropDownList></li>
           <li>     <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" BackColor="Black" ForeColor="White" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
                           <asp:ListItem Value="" Text="Theme" />
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
<!--start-contact-->
	<div class="contact">
		<div class="container">
             
			<div class="contact-top heading">
				<h3>
                    <asp:Label ID="Label1" runat="server" Text="CONTACT US" ForeColor="#626759"></asp:Label></h3>
              
			</div>
		<div class="contact-bottom">
                
       
        <br />
             
            &nbsp&nbsp&nbsp&nbsp      <asp:TextBox ID="TxtName" Text="Name" runat="server"></asp:TextBox>&nbsp&nbsp&nbsp
             <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="TxtName" errormessage="Please enter your First Name!"  ForeColor="Red"/>
                  <asp:TextBox ID="TxtEmail" Text="Email" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="TxtEmail" errormessage="Please enter your Email!"  ForeColor="Red"/>
          
                     <textarea id="Txtmsg" cols="20" runat="server" rows="2"></textarea>
           <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="Txtmsg" errormessage="Please enter your Message!"  ForeColor="Red"/>            
				<div class="submit-btn">
				
                    <asp:Button ID="BtnSubmit" runat="server" Text="SEND" OnClick="BtnSubmit_Click"/>

		</div>
    </div>
      
			
				</div>
		 
		<!--end-contact-->
		<!--start-map-->
			<div class="co-bt">
				<div class="col-md-3 add">
					<h4>
                        <asp:Label ID="Label2" runat="server" Text="Address" ForeColor=" #626759"></asp:Label></h4>
					<address>
                        <asp:Label ID="Label3" runat="server" Text="HOTEL PLAZA" ForeColor=" #626759"></asp:Label><br />
                        <asp:Label ID="Label4" runat="server" Text=" COLOMBO 3" ForeColor=" #626759"></asp:Label><br />
                         <asp:Label ID="Label5" runat="server" Text="Tel-0771923268" ForeColor=" #626759"></asp:Label>
					</address>
			
				</div>
				<div class="col-md-9 map">

					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2884.310671366718!2d7.283884900000001!3d43.70409239999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12cddab7066db4e1%3A0x7e52715fee03b279!2sNICE+FRANCE!5e0!3m2!1sen!2sin!4v1435662218413"  style="border:0" ></iframe>	
				</div>
				<div class="clearfix"></div>
                
			</div>
        
		</div>
         
      
	<!--end-map-->
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
       </form>  
</body>
</html>