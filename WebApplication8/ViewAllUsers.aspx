<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAllUsers.aspx.cs" Inherits="WebApplication8.ViewAllUsers1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>View All Users</h2>   
                    </div>
                </div>              
                 
    <div>
    <asp:Repeater id="cdcatalog" runat="server" >
         <ItemTemplate>

       <td>
           <asp:Label ID="Label2" runat="server" Text="Email  :" Font-Bold="true" ForeColor="Black"/><%# Eval("Email")%>
          </td>
 
     <br />
        <td>
        <asp:Label ID="Ltitle" runat="server" Text="First Name :" ForeColor="Black" Font-Bold="true"></asp:Label><%# Eval("Fname1")%>
        </td>
      <br />
      <td><asp:Label ID="Label1" runat="server" Text="Last Name :" ForeColor="Black" Font-Bold="true"></asp:Label> <%# Eval("Lname1")%>
        </td>
      <br />
        <td><asp:Label ID="Label3" runat="server" Text="Password :" ForeColor="Black" Font-Bold="true"></asp:Label> <%# Eval("Password")%>
        </td>
      <br />
             <td><asp:Label ID="Label4" runat="server" Text="ContactNo :" ForeColor="Black" Font-Bold="true"></asp:Label>  <%# Eval("ContactNo")%>
        </td>
       <br />
       <td><asp:Label ID="Label5" runat="server" Text="Question :" ForeColor="Black" Font-Bold="true"></asp:Label> <%# Eval("R_drown1")%>
        </td>
       <br />
    <td><asp:Label ID="Label6" runat="server" Text="Age :" ForeColor="Black" Font-Bold="true"></asp:Label><%# Eval("Age")%>
        </td>
       <br />
    <td><asp:Label ID="Label7" runat="server" Text="NIC:" ForeColor="Black" Font-Bold="true"></asp:Label><%# Eval("Nic")%>
        </td>
       <br />
     <td><asp:Label ID="Label8" runat="server" Text="Answer:" ForeColor="Black" Font-Bold="true"></asp:Label> <%# Eval("Answer")%>
        </td>
       <br />
     <td><asp:Label ID="Label9" runat="server" Text="Registerd Date:" ForeColor="Black" Font-Bold="true"></asp:Label><%# Eval("Date")%>
        </td>
       <br />
     <td><asp:Label ID="Label10" runat="server" Text="Address:" ForeColor="Black" Font-Bold="true"></asp:Label> <%# Eval("Address")%>
        </td>
       <br />
      <td><asp:Label ID="Label11" runat="server" Text="Nation:" ForeColor="Black" Font-Bold="true"></asp:Label> <%# Eval("Nation")%>
        </td>
       <br />
 
      <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Email","~/AdminUpdateUserDtl.aspx?Email={0}") %>'>Edit</asp:HyperLink> &nbsp;&nbsp;
       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Email","~/AdminDel.aspx?Email={0}") %>'>Delete</asp:HyperLink>  &nbsp;&nbsp;
      
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
