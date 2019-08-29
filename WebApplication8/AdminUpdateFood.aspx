<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUpdateFood.aspx.cs" Inherits="WebApplication8.AdminUpdateFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
   <div id="page-wrapper" >
            <div id="page-inner">
        <asp:Label ID="Label1" runat="server" Text="Food Name"></asp:Label> <br />        
 <asp:TextBox ID="FoodName" runat="server" Width="232px" MaxLength="25"></asp:TextBox>
      
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FoodName" CssClass="auto-style8" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
  <br />
      <asp:Label ID="Label2" runat="server" Text="Food Image"></asp:Label>  <br />
 <asp:FileUpload ID="FileUpload" runat="server" Width="292px" />
  <br />

  <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>  <br />
 <asp:TextBox ID="Hyperlink" runat="server" Width="247px" TextMode="Url" MaxLength="60"></asp:TextBox>
    
 <br />
  <asp:RadioButton ID="RadioButton3" runat="server" Checked="True" GroupName="lanuage" style="font-weight: 700; color: black" Text="English" />
  <asp:RadioButton ID="RadioButton1" runat="server" GroupName="lanuage" style="font-weight: 700; color: black" Text="France" />
   <asp:RadioButton ID="RadioButton2" runat="server" GroupName="lanuage" style="font-weight: 700; color: black" Text="Arabic" />

        <br />
           <asp:Button ID="update" runat="server" OnClick="update_Click"  Text="Update" Width="253px" />
        <asp:Label ID="confirm" runat="server" Text=""></asp:Label>

                </div>
       </div>
</asp:Content>

