<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check_Availability.aspx.cs" Inherits="WebApplication8.WebForm4" %>

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
   <form id="form2" runat="server">	
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

        <br />
       <br />
		<div style="width:40%; margin: 0 auto; align-content:center">
    <div>
        <h3> <asp:Label ID="Label1"  runat="server" Text="Rooms Availability" ForeColor="Gray" Font-Bold="true" Font-Italic="true" ></asp:Label> </h3>
        <br />

      <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="400px" 
            ShowGridLines="True" Width="440px" ondayrender="Calendar1_DayRender" >
      
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
        </asp:Calendar>
        
    </div>
    
    <table style="width: 249px; height: 66px" align-content: "center" >
    <tbody>
    <tr>
    <td style="width: 13px">
    &nbsp;<span id="Label4" style="color:#00C000;background-color:#00C000;border-color:#0000C0;border-width:1px;border-style:Solid;width:42px;">abcde</span></td>
    <td>
    <span id="Label2" style="color:Black;text-align: left">Booked</span>
    </td>
    </tr>
   
    <tr>
    <td style="width: 13px; height: 1px">
    &nbsp;<span id="Label8" style="color:#FFFFCC;background-color:#FFFFCC;border-color:#0000C0;border-width:1px;border-style:Solid;width:42px;">abcde</span></td>
    <td>
    <span id="Label9" style="color:Black;text-align: left">Available</span></td>
    </tr>
    </tbody>

    </table>
     <br />

    <asp:Button ID="btnNext" runat="server" Text="Book" onclick="btnNext_Click" />

       <br />
       <br />
            
            </div>

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