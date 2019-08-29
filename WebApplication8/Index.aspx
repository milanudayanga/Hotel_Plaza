<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs"   Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>
<html id="html" runat="server">
<head runat="server">
<title>Hotel Plaza</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
    <style type="text/css">
        .auto-style1 {
            background-color: #000000;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>


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
    
								<li class="active" >
                           <asp:HyperLink  ID="HyperLink1" runat="server" meta:resourcekey="HyperLink1" Text="Home" NavigateUrl="~/Index.aspx"></asp:HyperLink>
                                    </li>
								<li> <asp:HyperLink  ID="HyperLink2" runat="server"  Text="Rooms" NavigateUrl="~/Rooms.aspx"></asp:HyperLink></li>
                                <li> <asp:HyperLink  ID="HyperLink6" runat="server"  Text="Gallery" NavigateUrl="~/Gallery.aspx"></asp:HyperLink></li>
			
                                <li> <asp:HyperLink  ID="HyperLink4" runat="server"  Text="Profile" NavigateUrl="~/UserSettings.aspx"></asp:HyperLink></li>
								<li> <asp:HyperLink  ID="HyperLink3" runat="server"  Text="Sign In" NavigateUrl="~/SignIn.aspx"></asp:HyperLink></li>
                                <li> <asp:HyperLink  ID="HyperLink5" runat="server"  Text="Contact" NavigateUrl="~/Contact.aspx"></asp:HyperLink>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                            
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
				<div class="searchsb-search-box">
                    <div id="" class="sb-search">
				     
                        </div>
				</div>

					<div class="clearfix"> </div>
	

			</div>
		</div>
		<div class="banner-info">
			<div class="container">
				<div class="details-1">
					<div class="col-md-10 dropdown-buttons">   
						<div class="col-md-3 dropdown-button">           			
							<div class="input-group">
								<input class="form-control has-dark-background"name="slider-name" id="slider-name"  placeholder="Name" type="text" required="">
							</div>
						</div>
						<!---strat-date-piker---->
							<link rel="stylesheet" href="css/jquery-ui.css" />
							<script src="js/jquery-ui.js"></script>
							  <script>
							      $(function () {
							          $("#datepicker,#datepicker1").datepicker();
							      });
							  </script>
						<!---/End-date-piker---->

						<div class="col-md-3 dropdown-button">           			
							<div class="book_date">
						
									<input class="date" ID="datepicker" type="text" value="Check In" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Check In';}">
							
							</div>		
						</div>
					  <div class="col-md-3 dropdown-button">           			
							<div class="book_date">
							
							<input class="date1" id="datepicker1" type="text" value="Check Out" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Check Out';}">
							
							</div>		
						</div>
						<div class="col-md-3 dropdown-button">
						  <div class="section_1">
							 <select id="country" onchange="change_country(this.value)" class="frm-field required">
								<option value="null">Double Room</option>
								<option value="null">Single Room</option>         
								<option value="AX">Suit Room</option>
								<option value="AX">Guest Room</option>
							 </select>
						  </div>
						</div>
						<div class="clearfix"> </div>
					</div> 
					<div class="col-md-2 submit_button"> 
					
                          <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
					
					
					</div>
                  
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>

	</div>		

	<!-- banner -->
	<!-- hod -->
	<div class="hod">
		<div class="container">
			<div class="col-md-6 hod-left">
			<iframe width="520" height="300"
                    src="http://www.youtube.com/embed/gTaWFOhOuBI" >
                    </iframe>
			</div>
			<div class="col-md-6 hod-right">
				<h2>Sri Lanka</h2>
				<p>
                    <asp:Label ID="LblSrilanka" runat="server" ForeColor="#bcbfb8"  Text ="Sri Lanka (formerly Ceylon) is an island nation south of India in the Indian Ocean. Its diverse landscapes range from rainforest and arid plains to highlands and sandy beaches. It’s famed for its ancient Buddhist ruins, including the 5th-century citadel Sigiriya, with its palace and frescoes. The city of Anuradhapura, Sri Lanka's ancient capital, has many ruins dating back more than 2,000 years."></asp:Label></p>
				<a class="hvr-shutter-in-horizontal" href="Rooms.aspx">
                    <asp:Label ID="Label16" runat="server" Text="Book Now" ForeColor="White"></asp:Label></a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- hod -->
	<!-- tels -->
	<div class="tels">
		<div class="container">
			<div class="col-md-4 tels-left">
				<h4>
                    <asp:Label ID="Label10" runat="server" Text="DELUXE ROOM " ForeColor="#bcbfb8" Font-Bold="true"></asp:Label><span>110$</span></h4>
				<img src="images/Deluxe-Room.jpg" class="img-responsive" alt="">
				<p>
                    <asp:Label ID="Label1" runat="server" ForeColor="#bcbfb8" Text ="Our Deluxe Rooms have private balconies with direct and partial sea views. The rooms are spacious enough for a small wooden sofa and writing table."></asp:Label></p>
				<a class="hvr-shutter-in-horizontal" href="Deluxe-Room.aspx">
                    <asp:Label ID="Label15" runat="server" Text="Book Now" ForeColor="White"></asp:Label></a>
			</div>
			<div class="col-md-4 tels-left">
				<h4>
                    <asp:Label ID="Label11" runat="server" Text="LUXURY ROOM" ForeColor="#bcbfb8" Font-Bold="true"></asp:Label> <span>150$</span></h4>
				<img src="images/Luxury-Room-Opt-2.jpg" class="img-responsive" alt="">
				<p>
                    <asp:Label ID="Label2" runat="server"  ForeColor="#bcbfb8" Text="Luxury Rooms have corner locations, so they have much larger balconies and seating areas. The bathroom contains a bathtub with overhead rain shower, and weighing scales."></asp:Label></p>
				<a class="hvr-shutter-in-horizontal" href="LuxuryRoom.aspx">
                    <asp:Label ID="Label14" runat="server" Text="Book Now" ForeColor="White"></asp:Label></a>
			</div>
			<div class="col-md-4 tels-left">
				<h4>
                    <asp:Label ID="Label12" runat="server" Text="SUITES" ForeColor="#bcbfb8" Font-Bold="true"></asp:Label> <span>200$</span></h4>
				<img src="images/Luxury-Suite-Bedroom.jpg" class="img-responsive" alt="">
				<p>
                    <asp:Label ID="Label3" runat="server"  ForeColor="#bcbfb8" Text="With a separate sitting area and a spacious private balcony, our Suites provide you with more space to spread out and relax. They are ideal for families, as we can provide an extra bed in the sitting area."></asp:Label></p>
				<a class="hvr-shutter-in-horizontal" href="Suites.aspx">
                    <asp:Label ID="Label13" runat="server" Text="Book Now" ForeColor="White"></asp:Label></a>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- tels -->
	<!-- special -->
	<div class="special">
		<div class="container">
			<div class="spe-info">
				<h3>
                    <asp:Label ID="Label4" runat="server" Text="Special Offer" ForeColor="#bcbfb8"></asp:Label></h3>
				<p>
                    <asp:Label ID="LblSpecialOffer" runat="server" Text="Register With Us and Get 20% Discount" ForeColor="#bcbfb8"></asp:Label></p>
			</div>
		</div>
	</div>
	<!-- special -->
	<!-- quick -->
	<div class="quick">
		<div class="container">
			<div class="col-md-4 quick-left">
				<h3>
                    <asp:Label ID="Label5" runat="server" Text="Most Popular" ForeColor="#bcbfb8"></asp:Label></h3>
				<img src="images/Luxury-Room-Opt-2.jpg" class="img-responsive" width="600" height="600" alt="">
			</div>
			<div class="col-md-4 quick-left">
				<h3>
                    <asp:Label ID="Label6" runat="server" Text="News & Events" ForeColor="#bcbfb8"></asp:Label></h3>
				<div class="new">
					<div class="n-lft">
						<h5>30</h5>
						<h6>Sep</h6>
					</div>
					<div class="n-rgt">
						<p>
                            <asp:Label ID="Label7" runat="server" Text="Discount available" ForeColor="#bcbfb8"></asp:Label><a href="Rooms.aspx"></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-4 quick-left">
				<h3>
                    <asp:Label ID="Label8" runat="server" Text="Join Us" ForeColor="#bcbfb8"></asp:Label></h3>
                <asp:HyperLink  ID="HyperLink7" runat="server"  Text="Rooms" NavigateUrl="~/Register.aspx"><h3>
                    <asp:Label ID="Label9" runat="server" Text="Create a Profile" ></asp:Label></h3></asp:HyperLink>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- quick -->
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