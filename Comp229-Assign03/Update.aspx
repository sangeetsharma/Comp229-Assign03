<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign03.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <
    
     First Name:<asp:TextBox ID="F_Name" runat="server" placeholder="First Name" CssClass="" Height="40px" Width="260px"> </asp:TextBox>
            <!-- Validation of the first Name field -->
            <asp:RequiredFieldValidator ID="Fname_val" runat="server" ControlToValidate="F_Name" ErrorMessage="(Please enter your First name)" ForeColor="#ff6a00"></asp:RequiredFieldValidator>
            <br />

            Last Name:<asp:TextBox ID="L_name" runat="server" placeholder="Last Name" CssClass="" Height="40px" Width="260px"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="L_Name" ErrorMessage="(Please enter your Last name)" ForeColor="#ff6a00"></asp:RequiredFieldValidator>
            <br />

     Course     :<asp:TextBox ID="course_name" runat="server" placeholder="Course Name" CssClass="" Height="40px" Width="260px"> </asp:TextBox>
            <!-- Validation of the first Name field -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="F_Name" ErrorMessage="(Please enter your Course)" ForeColor="#ff6a00"></asp:RequiredFieldValidator>
            <br />



     <asp:Button ID="update" runat="server" Text="Update" BackColor="#ff6a00" ForeColor="#ffffff" Height="32px"  />


     <asp:Button ID="delete" runat="server" Text="Delete" BackColor="#ff6a00" ForeColor="#ffffff" Height="32px"  />






</asp:Content>
