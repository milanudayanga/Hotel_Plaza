﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDel.aspx.cs" Inherits="WebApplication8.AdminDel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Good Luck!</h2>   
                    </div>
                </div>              
              <h3> Thank you</h3>   
                Are You Sure ???
                
                <asp:Button ID="BtnYes" runat="server" Text="Yes" OnClick="BtnYes_Click" />    &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="BtnNo" runat="server" Text="No" OnClick="BtnNo_Click" />     
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