<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="WebApplication8.Rooms" %>

<!DOCTYPE html>

<html id="html" runat="server">
<head runat="server">
<title>Motel a Hotel Category Flat Bootstrap Responsive Website Template | Rooms :: w3layouts</title>
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
                              
							
                          <li> <asp:HyperLink  ID="HyperLink1" runat="server" meta:resourcekey="HyperLink1" Text="Home" NavigateUrl="~/Index.aspx"></asp:HyperLink></li>
                                  	<li class="active" >
								 <asp:HyperLink  ID="HyperLink2" runat="server"  Text="Rooms" NavigateUrl="~/Rooms.aspx"></asp:HyperLink></li> 
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
				<div class="search-box">
					 <div id="sb-search" class="sb-search">
				       
                        </div>
				</div>
					<div class="clearfix"> </div>


			</div>
                
		</div>
	</div>	
            </form>	
		<!-- banner -->
<!-- single -->
	<div class="single">
		<div class="container">
			<div class="single-top">
				<div class="col-md-6 single-left">
					<a href="details.html"><img src="images/Luxury-Room-Opt-2.jpg" class="img-responsive" alt=""></a>
				</div>
				<div class="col-md-6 single-right">
					<h3>
                        <asp:Label ID="Label2" runat="server" Text="LUXURY ROOM" ForeColor="Black"></asp:Label></h3>
					<p>
                    <asp:Label ID="Label1" runat="server" Text="As a premier beach resort in Sri Lanka, our Deluxe Rooms have private balconies with partial sea view. The rooms are also spacious enough for a small wooden sofa and writing desk." ForeColor="#626759"/></p>
					<h6>
                        <asp:Label ID="Label13" runat="server" Text="• Best Rate Guaranteed" ForeColor="White"></asp:Label></h6>
					<div class="sinbt">
						<a class="hvr-shutter-in-horizontal" href="LuxuryRoom.aspx">
                            <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Book Now"></asp:Label></a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="single-top">
				<div class="col-md-6 single-right">
					<h3> <asp:Label ID="Label3" runat="server" Text="LUXURY-SUITES" ForeColor="Black"/></h3>
					<p>
               <asp:Label ID="Label4" runat="server" Text="Our spacious Luxury Suites have separate living rooms with DVD player and home theatre system – perfect for a family night in or entertaining friends.
No waiting to use the bathroom, either, as it comes with twin basins, Jacuzzi and separate rainshower cubicle. Our well designed luxury suites provide you the best comforts and finest amenities any beach resort in Sri Lanka could offer. " ForeColor="#626759"/></p>
					<h6> <asp:Label ID="Label14" runat="server" Text="• Best Rate Guaranteed" ForeColor="White"></asp:Label></h6>
					<div class="sinbt">
						<a class="hvr-shutter-in-horizontal" href="Luxury-Suites.aspx"><asp:Label ID="Label10" runat="server" ForeColor="White" Text="Book Now"/></a>
					</div>
				</div>
				<div class="col-md-6 single-left">
					<a href="details.html"><img src="images/Luxury-Suite-Bedroom.jpg" class="img-responsive" alt=""></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="single-top">
				<div class="col-md-6 single-left">
					<a href="details.html"><img src="images/Junior-Suite-Bedroom.jpg" class="img-responsive" alt=""></a>
				</div>
				<div class="col-md-6 single-right">
					<h3>
                        <asp:Label ID="Label5" runat="server" Text="SUITES" ForeColor="Black"></asp:Label></h3>
					<p>
                        <asp:Label ID="Label6" runat="server" Text="With a separate sitting area and a spacious private balcony, our Suites provide you with more space to spread out and relax. They are ideal for families, as we can provide an extra bed in the sitting area.
The bathroom has a bathtub and separate rain shower cubicle. With all these modern amenities we give you the best accommodation facilities any luxury resort in Sri Lanka could provide. " ForeColor="#626759"></asp:Label></p>
					
					<h6><asp:Label ID="Label15" runat="server" Text="• Best Rate Guaranteed" ForeColor="White"></asp:Label></h6>
					<div class="sinbt">
						<a class="hvr-shutter-in-horizontal" href="Suites.aspx"><asp:Label ID="Label11" runat="server" ForeColor="White" Text="Book Now"/></a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>

        	<div class="single-top">
				<div class="col-md-6 single-left">
					<a href="Deluxe-Room.aspx"><img src="images/Deluxe-Room.jpg" class="img-responsive" alt=""></a>
				</div>
				<div class="col-md-6 single-right">
					<h3><asp:Label ID="Label7" runat="server" Text="DULUXE ROOM" ForeColor="Black"></asp:Label></h3>
					<p> <asp:Label ID="Label8" runat="server" ForeColor=" #626759" Text="As a premier beach resort in Sri Lanka, our Deluxe Rooms have private balconies with partial sea view. The rooms are also spacious enough for a small wooden sofa and writing desk."></asp:Label>
 </p>
				
					<h6><asp:Label ID="Label16" runat="server" Text="• Best Rate Guaranteed" ForeColor="White"></asp:Label></h6>
					<div class="sinbt">
						<a class="hvr-shutter-in-horizontal" href="Deluxe-Room.aspx"><asp:Label ID="Label12" runat="server" ForeColor="White" Text="Book Now"/></a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
         </div>
	</div>
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
