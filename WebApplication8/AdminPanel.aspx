<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="WebApplication8.AdminPanel" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome :<asp:Label ID="lblName" runat="server" ></asp:Label></strong> 
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                            <div class="row text-center pad-top">
                 
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="AdminMessageBox.aspx" >
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4>
                      </a>
                      </div>
                     
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="ViewAllUsers.aspx" >
                <i class="fa fa-users fa-5x"></i>
                      <h4>Manage/View All Users</h4>
                      </a>
                      </div>
                     
                     
                  </div>

              
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="AdminProfile.aspx" >
 <i class="fa fa-gear fa-5x"></i>
                      <h4>Account Settings</h4>
                      </a>
                      </div>
                    
                  </div>


                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="AdminManageBookings.aspx" >
 <i class="fa fa-gear fa-5x"></i>
                      <h4>Manage/View Bookings</h4>
                      </a>
                      </div>
                    
                  </div>



                     <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="AdminRegistration.aspx" >
 <i class="fa fa-user fa-5x"></i>
                      <h4>Register Admin</h4>
                      </a>
                      </div>
                     
                     </div>
                    
                     
                  </div> 
             
                  <!-- /. ROW  -->    
        
                 <!-- /. ROW  -->   
				  <div class="row">
                    <div class="col-lg-12 ">
					<br/>
                        <div class="alert alert-danger">
                           
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
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
          

  
   
</asp:Content>