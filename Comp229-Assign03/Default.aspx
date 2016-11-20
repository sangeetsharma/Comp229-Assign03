<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign03._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Image ID="pagelogo" ImageUrl="~/Assets/Images/school logo.png" runat="server" Width="400px" />
    <h2><%: Title %></h2>

    <br />

    




    <asp:DataList ID="Stu_List" runat="server">



        <ItemTemplate>
            

            <asp:LinkButton ID="name" runat="server" Text='<%# Eval("FirstMidName") %>' PostBackUrl='<%# string.Format("~/StudentInfo.aspx?studentid={0}", Eval("StudentID")) %>'/>
            <br />
            <!--<asp:Literal ID="details" runat="server" EnableViewState="false"></asp:Literal>-->

        </ItemTemplate>
    </asp:DataList>

   


</asp:Content>
