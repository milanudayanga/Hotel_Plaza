<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="WebApplication8.AdminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
    <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 

                     <li >
                        <a href="AdminPanel.aspx" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>
                  
              
                </ul>
                            </div>

        </nav>
    
    
    
  <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Profile</h2>   
                    </div>
                </div>              
                 
    <div>
    <asp:Repeater id="cdcatalog" runat="server" >
         <ItemTemplate>

       <td>
           <asp:Label ID="Label2" runat="server" Text="Email  :" Font-Bold="true" ForeColor="Black"/><%# Eval("Mail")%>
          </td>
     <br />
           

    <td><asp:Label ID="Ltitle" runat="server" Text="First Name :" ForeColor="Black" Font-Bold="true"></asp:Label>  <%# Eval("Fname")%>
        </td>
      <br />
             <td><asp:Label ID="Label5" runat="server" Text="Last Name :" ForeColor="Black" Font-Bold="true"></asp:Label>  <%# Eval("Lname")%>
        </td>
      <br />
    <td><asp:Label ID="Label1" runat="server" Text="NIC :" ForeColor="Black" Font-Bold="true"></asp:Label>  <%# Eval("NIC")%>
        </td>
      <br />
     <td><asp:Label ID="Label3" runat="server" Text="Password :" ForeColor="Black" Font-Bold="true"></asp:Label>  <%# Eval("Password")%>
        </td>
      <br />
      <td><asp:Label ID="Label4" runat="server" Text="Age :" ForeColor="Black" Font-Bold="true"></asp:Label>  <%# Eval("Age")%>
        </td>
      <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Mail","~/UpdateDetails.aspx?Email={0}") %>'>Edit</asp:HyperLink> &nbsp;&nbsp;
       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Mail","~/AdminDel.aspx?Email={0}") %>'>Delete</asp:HyperLink>  &nbsp;&nbsp;
      
         <br />
        <br />
          </ItemTemplate>
      
        </asp:Repeater>
      
      
      
       

    </div>
           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
      
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
    




</asp:Content>
