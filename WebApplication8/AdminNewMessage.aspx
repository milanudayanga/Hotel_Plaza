<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminNewMessage.aspx.cs" Inherits="WebApplication8.WebForm2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                        <a href="AdminPanel.aspx" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>
                   

                    <li>
                        <a href="AdminSent.aspx"><i class="fa fa-table "></i>Sent Messages</a>
                    </li>

                    <li>
                        <a href="AdminMessageBox.aspx"><i class="fa fa-edit "></i>Inbox</a>
                    </li>

                        <li class="active-link">
                        <a href="AdminNewMessage.aspx"><i class="fa fa-edit "></i>New Messages</a>
                    </li>
           
                </ul>
                            </div>

        </nav>
        </div>
        <!-- /. NAV SIDE  -->
      
     <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>New Message</h2>   
                    </div>
                    <br />
                </div>              
                <asp:Label ID="Label1" runat="server" Text="Email   :   "></asp:Label>     <br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <br />
                <br />
                 <asp:Label ID="Label2" runat="server" Text="Message  :    "></asp:Label>     <br />
                <textarea id="txtmsg" cols="20" rows="2" runat="server"></textarea>    
                
                <asp:Button ID="btnSend" runat="server" Text="Send"  OnClick ="btnSend_Click"/>     
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
    </form>
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
