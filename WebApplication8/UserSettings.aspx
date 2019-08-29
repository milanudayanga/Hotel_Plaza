<%@ Page Title="" Language="C#" MasterPageFile="~/UserSite.Master" AutoEventWireup="true" CodeBehind="UserSettings.aspx.cs" Inherits="WebApplication8.UserSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>User Profile</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome  :<asp:Label ID="lblName" runat="server" Text=""></asp:Label> </strong> 
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
             <div class="row text-center pad-top">

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="UserMessageBox.aspx" >
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4>
                      </a>
                      </div>
                   </div>  
                     <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="UserViewBookings.aspx" >
                        <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Bookings</h4>
                      </a>
                      </div>  
                     
                  </div>
               
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="UserProfileSettings.aspx" >
                    <i class="fa fa-gear fa-5x"></i>
                      <h4>Account Settings</h4>
                      </a>
                      </div>
                     
                  
                  </div> 
             
           
                </div>
                  <!-- /. ROW  --> 
    
             <!-- /. PAGE INNER  -->
            </div>
          </div>

         <!-- /. PAGE WRAPPER  -->
        
    <div class="footer">
      
    
            <div class="row">
                <div class="col-lg-12" >
                          &copy;  2016 (CB005808)| Design by: <a href="http://binarytheme.com" style="color:#fff;"  target="_blank">www.HotelPlaza.com</a>
                </div>
            </div>
        </div>

</asp:Content>
