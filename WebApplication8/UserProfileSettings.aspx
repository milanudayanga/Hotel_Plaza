<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfileSettings.aspx.cs" Inherits="WebApplication8.UserProfileSettings" %>

<!DOCTYPE html>
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
                     <h2>Profile Settings </h2>   
                    </div>
                </div>
                <div id="content">
  <form id="form1" runat="server">

      <br />
         <asp:GridView ID="GridView1" runat="server" Height="124px" Width="768px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                      <asp:Image ID= "image1" runat="server"
                          ImageUrl='<%# "Handler1.ashx?id=" + Eval("id")%>' Height="200px" Width="200px"/>

                      </ItemTemplate>
                    </asp:TemplateField>


                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
      <br />
       <asp:GridView ID="UserGridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" >
                    <Columns>

                     
                        <asp:BoundField DataField="FirstName" HeaderText="First Name " />   
                        <asp:BoundField DataField="LastName" HeaderText="Last Name " /> 
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Password" HeaderText="Password" />
                         <asp:BoundField DataField="contactNo" HeaderText="ContactNo" />
                    </Columns>
                </asp:GridView>
      <br />
      <br />

  
        <div>
            <table>
               
                <tr>
                <td>
                        FirstName:
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstame" runat="server"></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                <td>
                        Last Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtSecondName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                <td>
                        ContactNo:
                    </td>
                    <td>
                        <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                         Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                
               <td></td>
                   <td style="margin-left:80px">
                   
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                       <asp:Button ID="btnDelete" runat="server" Text="Deactivate"  OnClick="btnDelete_Click"/>
                   </td>
                   </tr>
              
            </table>
            <br />

                 <asp:Label ID="Label1" runat="server" Text="Profile Picture" Font-Bold="true"></asp:Label>
                    <br /> 
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="btnPropic" runat="server" Text="Make As Profile Pic" OnClick="btnPropic_Click" />
                        <asp:Button ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click"/>
            <br />
                  <asp:Label ID="lblResult" runat="server" ></asp:Label>
            <br />
              
         
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
