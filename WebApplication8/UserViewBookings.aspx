<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="UserViewBookings.aspx.cs" Inherits="WebApplication8.WebForm3" %>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile</title>
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
                        <a href="UserSettings.aspx" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>

                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
       
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    
                    <div class="col-md-12">
                     <h2>View Bookings</h2>   
                    </div>
                </div>
                <div id="content">
  <form id="form1" runat="server">

      <br />

       <asp:GridView ID="UserBknsGridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"  >
                    <Columns>

                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="name" HeaderText="First Name" />   
                        <asp:BoundField DataField="surname" HeaderText="SurName " />   
                        <asp:BoundField DataField="phone" HeaderText="Tel" />   
                        <asp:BoundField DataField="checkin" HeaderText="Check In " />   
                        <asp:BoundField DataField="checkout" HeaderText="Check Out" />   
                        <asp:BoundField DataField="total" HeaderText="Total" />   
                        <asp:BoundField DataField="Memebers" HeaderText="Members" /> 
                        <asp:BoundField DataField="Nights" HeaderText="No_Nights" />
                         <asp:BoundField DataField="RoomType" HeaderText="Room Type" />
                         <asp:BoundField DataField="NoRooms" HeaderText="NoOfRooms" />
                        <asp:BoundField DataField="Food" HeaderText="Food" />
                        <asp:BoundField DataField="Transport" HeaderText="Transport" />
                    </Columns>
                </asp:GridView>
      <br />
      <br />

        <div>
          
            <br />
              
        </div>
    
    </form>
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
