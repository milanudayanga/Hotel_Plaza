<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminSent.aspx.cs" Inherits="WebApplication8.AdminSent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Sent Messages</h2>   
                    </div>
                </div>              
                 
    <div>
    <asp:Repeater id="cdcatalog" runat="server" >
         <ItemTemplate>

       <td>
           <asp:Label ID="Label2" runat="server" Text="Customer Email  :" Font-Bold="true" ForeColor="Black"/><%# Eval("Email")%>
          </td>
     <br />
           

    <td><asp:Label ID="Ltitle" runat="server" Text="Message :" ForeColor="Black" Font-Bold="true"></asp:Label>  <%# Eval("msg")%>
        </td>
      <br />
       
    <td><asp:Label ID="Label1" runat="server" Text="Date :" ForeColor="Black" Font-Bold="true"></asp:Label>  <%# Eval("Date")%>
        </td>
             <br />
       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Email","~/AdminSentMsgDel.aspx?Email={0}") %>'>Delete</asp:HyperLink>  &nbsp;&nbsp;
      
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
