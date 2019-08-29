<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suites.aspx.cs" Inherits="WebApplication8.WebForm8" %>

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
  <form id="form1" runat="server">	
<!-- banner -->
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
    
								
                           <li><asp:HyperLink  ID="HyperLink1" runat="server" meta:resourcekey="HyperLink1" Text="Home" NavigateUrl="~/Index.aspx"></asp:HyperLink></li>
                                
							<li class="active" ><asp:HyperLink  ID="HyperLink2" runat="server"  Text="Rooms" NavigateUrl="~/Rooms.aspx"></asp:HyperLink></li>    
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

				<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
					<script>
					    new UISearch(document.getElementById('sb-search'));
					</script>
				<!-- //search-scripts -->

			</div>
		</div>
	</div>		
		<!-- banner -->
<!-- details -->
	<div class="details">
		<div class="container">
			<div class="col-md-7 details-left">
				<img src="images/Luxury-Room-Opt-2.jpg" class="img-responsive" alt="">
			</div>
			<div class="col-md-5 details-right">
                <span><strong> <asp:Label ID="Label20" runat="server" Font-Size="XX-Large" Font-Bold="true" ForeColor="Gray" Text="SUITES"/></strong></span><br />
				<span><strong><asp:Label ID="Label21" runat="server" Font-Size="Medium" ForeColor="Gray" /></strong></span><ul>				                                                
				<li> <asp:Label ID="Label19" runat="server" Font-Size="Medium" ForeColor="Gray" Text="Number of rooms: 5"/></li>
				<li> <asp:Label ID="Label18" runat="server" Font-Size="Medium"  ForeColor="Gray" Text="Floors: Ground, First and second floors"/></li>
				<li> <asp:Label ID="Label17" runat="server" Font-Size="Medium" ForeColor="Gray"  Text="Size: 700 square feet (65 square metres)"/></li> </ul>
				<p>  <asp:Label ID="Label16" runat="server" Font-Size="Medium"  ForeColor="Gray" Text="With a separate sitting area and a spacious private balcony, our Suites provide you with more space to spread out and relax. They are ideal for families, as we can provide an extra bed in the sitting area.
The bathroom has a bathtub and separate rain shower cubicle. With all these modern amenities we give you the best accommodation facilities any luxury resort in Sri Lanka could provide."/></p>
			  </div>
				<div class="clearfix"> </div>
			<div class="details-top">
				<h3>
                    <asp:Label ID="Label35" runat="server" Text="Best Rate Granted" Font-Size="Medium" ForeColor="Gray" ></asp:Label></h3>
				<h5> <asp:Label ID="Label14" runat="server" Font-Size="Medium" ForeColor="Gray" Text="Buy the online room booking, save money and skip the line!"/></h5>
				<h6> <asp:Label ID="Label13" runat="server" Font-Size="Medium" ForeColor="Gray" Text="Validity : from 1 January 2016 to 31 August 2017"/></h6>
				<h4>
                    <asp:Label ID="Label37" runat="server" Text="Included" Font-Size="Medium" ForeColor="Gray"  Font-Bold="true" ></asp:Label></h4><ul>
				<li> <asp:Label ID="Label11" runat="server" Font-Size="Medium" ForeColor="Gray" Text="Kids under 5: free"/></li>
				<li> <asp:Label ID="Label10" runat="server" Font-Size="Medium" ForeColor="Gray" Text="publishing packages and web .Many desktop publishing packages and web page editors "/></li> </ul>
                <br />

                <asp:Label ID="Label36" runat="server" Text="Facilities" Font-Size="Medium" ForeColor="Gray" Font-Bold="true" ></asp:Label>
                <ul>
				<li> <asp:Label ID="Label8" runat="server"  Font-Size="Medium" ForeColor="Gray"  Text="Kingsize bed or twin beds"/> </li>
                <li> <asp:Label ID="Label7" runat="server"  Font-Size="Medium" ForeColor="Gray"  Text="Digital safe"/>  </li>
                <li> <asp:Label ID="Label6" runat="server"  Font-Size="Medium" ForeColor="Gray"  Text="Fully stocked minibar"/> </li>
                <li> <asp:Label ID="Label5" runat="server"  Font-Size="Medium" ForeColor="Gray"  Text="Telephone with international direct dialling"/> </li>
                <li> <asp:Label ID="Label4" runat="server"  Font-Size="Medium" ForeColor="Gray" Text=" Free Wi-Fi"/></li>
                <li> <asp:Label ID="Label3" runat="server"  Font-Size="Medium" ForeColor="Gray"  Text="Bathtub with overhead shower cubicle"/> </li>
               <li> <asp:Label ID="Label2" runat="server"  Font-Size="Medium" ForeColor="Gray" Text="TV with satellite and local channels"/> </li> 
                <li> <asp:Label ID="Label1" runat="server"  Font-Size="Medium" ForeColor="Gray"  Text="Air conditioning and fan"/></li> </ul>
				
                <h4>
                    <asp:Label ID="Label34" runat="server" Text="Additional information" Font-Size="Medium" ForeColor="Gray" ></asp:Label></h4>
			
			</div>

			<div class="booking-form">
                  
				 <div class="col-md-6">		 
				
					
                            <asp:Label ID="Label26" runat="server" Text="NAME" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label>
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" Font-Size="Small" controltovalidate="TxtName" errormessage="Please enter Name!" ForeColor="Red"/>
					    <br />
						
                        <asp:Label ID="Label27" runat="server" Text="SUR NAME" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label>
                          <asp:TextBox ID="TxtSurName" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" Font-Size="Small" controltovalidate="TxtSurName" errormessage="Please enter SurName!" ForeColor="Red"/>

						<br />
						<asp:Label ID="Label28" runat="server" Text="E-MAIL" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label>
                          <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" Font-Size="Small" controltovalidate="TxtEmail" errormessage="Please enter Email!"   ForeColor="Red"/>
						<br />
							<asp:Label ID="Label29" runat="server" Text="PHONE" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label>
                          <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
					  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" Font-Size="Small" controltovalidate="TxtPhone" errormessage="Please enter phone!"  ForeColor="Red"/>
					<br />
                    	<asp:Label ID="Label30" runat="server" Text="NO-ROOMS" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label>
                          <asp:TextBox ID="txtNoRooms" runat="server"></asp:TextBox>
					  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" Font-Size="Small" controltovalidate="txtNoRooms" errormessage="Please enter No of rooms!"  ForeColor="Red"/>
				<br />
				</div>
				<div class="col-md-6">		
					
						<h5>
                            <asp:Label ID="Label24" runat="server" Text="CHECK IN" Font-Size="Medium" ForeColor="Gray" Font-Bold="true" ></asp:Label></h5>
                
                <asp:Calendar ID="checkin" runat="server"  SelectionMode="DayWeekMonth" onselectionchanged="checkin_SelectionChanged" BackColor="Gray"></asp:Calendar>
						<br />
						<h5><asp:Label ID="Label25" runat="server" Text="CHECK OUT" Font-Size="Medium" ForeColor="Gray" Font-Bold="true"></asp:Label></h5>
						<asp:Calendar ID="checkout" runat="server" SelectionMode="DayWeekMonth" onselectionchanged="checkout_SelectionChanged" BackColor="Gray"></asp:Calendar>

                    </div>
                 <div class="col-md-6">	
				 <h5 class="mem">	<asp:Label ID="Label31" runat="server" Text="NO-MEMBERS" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label></h5>
                 
             <asp:TextBox ID="txtmem" runat="server" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" Width="500px"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator7" Font-Size="Small" controltovalidate="txtmem" errormessage="Please enter No of memebers!"  ForeColor="Red"/>
                <br />
               	 <h5 class="mem">	<asp:Label ID="Label32" runat="server" Text="NO-NIGHTS" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label></h5>
                 <asp:TextBox ID="txtngt" runat="server" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" Width="500px"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator8" controltovalidate="txtngt" Font-Size="Small"  errormessage="Please enter No nights!"  ForeColor="Red"/>

                <br />

				 <h5>
                     <asp:Label ID="Label33" runat="server" Text="REQUIRED" Font-Size="Medium" ForeColor="Gray" Font-Bold="true"></asp:Label></h5>  
                       <br />
                       <br />
                  <asp:Label ID="Label9" runat="server" Text="FOOD" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label>
                        <div style= "border:1px solid black;  width:500px">
                       <asp:DropDownList ID="food" runat="server"  BorderColor="Black">
                              <asp:ListItem Value="" Text="None" />
                                <asp:ListItem Value="01" Text="Breakfast" />
                                  <asp:ListItem Value="02" Text="Lunch" />
                                   <asp:ListItem Value="03" Text="Dinner" />
                                    </asp:DropDownList>
                                         </div>
                       <br />

          <asp:Label ID="Label12" runat="server" Text="TRANSPORT" Font-Size="Small" ForeColor="Gray" Font-Bold="true"></asp:Label>
                       <div style= "border:1px solid black;  width:500px">
                <asp:DropDownList ID="transport" runat="server" >
                               <asp:ListItem Value="" Text="None" />
                                <asp:ListItem Value="01" Text="Airport Pickup" />
                                  <asp:ListItem Value="02" Text="Airport Drop" />
                                   <asp:ListItem Value="03" Text="Airport Two Way" />
                                    </asp:DropDownList>
                 
                    </div>
            </div>
                       <br />  
                        <asp:Button ID="Button1" runat="server" Text="Check Total" OnClick="Button1_Click" />

                       <asp:Label ID="Label15" runat="server" Text="TOTAL PRICE :" Font-Size="Medium" ></asp:Label>
                       <asp:Label ID="Label23" runat="server" Text=""></asp:Label>
                       <br />

                        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                       <asp:Button ID="BtnRest" runat="server" Text="Reset" OnClick="BtnRest_Click" />
                    
					      
			 </div>
       	
			</div>
    
		 </div>
 	
       <div style="width:40%; margin: 0 auto; align-content:center">
         <asp:HyperLink ID="HyperLink7" Font-Size="Large" ForeColor="Red" runat="server" NavigateUrl="FoodDetails.aspx">View Food Items</asp:HyperLink>
 	
            </div>
   
         <br />
   

<!-- details -->
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