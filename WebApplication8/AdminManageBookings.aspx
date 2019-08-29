

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminManageBookings.aspx.cs" Inherits="WebApplication8.AdminManageBookings" %>

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
</head>
<body>
       <form id="form1" runat="server">
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
                     <asp:Button ID="Button1" runat="server" ForeColor="Black" Text ="LOGOUT" OnClick="Button1_Click" />

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 

 <li >
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
                     <h2>Manage Bookings</h2>   
                    </div>
                </div>
                <div id="content">


      <br />

       <asp:GridView ID="UserBknsGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False"  >
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
            <table>
                   <tr>
                <td>                 
                       Email:
                    </td>
                    <td>
                       <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
         <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click"/>
           <asp:requiredfieldvalidator runat="server" ControlToValidate="txtEmail" errormessage="RequiredFieldValidator" ForeColor="Red"></asp:requiredfieldvalidator>
                    </td>
                </tr>
             
                  <tr>
                <td>
                   
                       Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    
                    </td>
                </tr>
                  <tr>
                <td>
                        SurName:
                    </td>
                    <td>
                        <asp:TextBox ID="txtSurName" runat="server"></asp:TextBox>
                    </td>
                </tr>
               

              <tr>
                <td>
                        Tel:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
            
                   <tr>
                <td>
                        Check IN:
                    </td>
                    <td>
                        <asp:TextBox ID="txtCheckIn" runat="server"> </asp:TextBox>  
                    </td>
                     
                      
                </tr>
                  
                   <tr>
                <td>
                        Check Out:
                    </td>
                    <td>
                        <asp:TextBox ID="txtCheckOut" runat="server">       </asp:TextBox>
                       
                        </td>
                    
         
                </tr>
                   <tr>
                <td>
                        Total:
                    </td>
                    <td>
                        <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                <td>
                        Memebers:
                    </td>
                    <td>
                        <asp:TextBox ID="txtMembers" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                <td>
                        No_Nights:
                    </td>
                    <td>
                        <asp:TextBox ID="txtNights" runat="server"></asp:TextBox>
                    </td>
                </tr>
              <tr>

                  
                <td>
                        Room Type:
                    </td>
                    <td>
                        <asp:TextBox ID="txtRoomType" runat="server"></asp:TextBox>
                    </td>
                </tr>
              <tr>
                     <td>
                        NoRooms:
                    </td>
                    <td>
                        <asp:TextBox ID="txtNoRooms" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                     <td>
                        Food:
                    </td>
                    <td>
                        <asp:TextBox ID="txtFood" runat="server"></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                     <td>
                        Transport:
                    </td>
                    <td>
                        <asp:TextBox ID="txtTransport" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
             

                   <td style="margin-left:80px">
                       <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click"/>
                        <asp:Button ID="btnUpdate" runat="server" Text="Edit" OnClick="btnUpdate_Click" />
                       <asp:Button ID="btnDelete" runat="server" Text="Cancel"  OnClick="btnDelete_Click"/>
                   </td>
                    </tr>

                <tr>

                </tr>
                 <tr>
                       <td>
                                    ===Check  In====    
                        <asp:Calendar ID="checkin" runat="server"  SelectionMode="DayWeekMonth" onselectionchanged="checkin_SelectionChanged"></asp:Calendar>
                        </td>

                    
                     <td>

                     </td>
                    
                       <td> 
                          ===Check Out====      
                        <asp:Calendar ID="checkout" runat="server" SelectionMode="DayWeekMonth" onselectionchanged="checkout_SelectionChanged"></asp:Calendar>
                  
                        </td>
                   </tr>
              
            </table>
            <br />
                <asp:HyperLink ID="HyperLink1" Font-Size="Medium" ForeColor="Red" runat="server" NavigateUrl="AdminUpdateFood.aspx">Update Foods</asp:HyperLink>
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
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
       </form>
</body>
</html>
