<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="Comp229_Assign03.StudentInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Student ID:
    <asp:Label runat="server" ID="SID" Text="Text"></asp:Label>
        <br />
    First Name:
    <asp:Label runat="server" ID="FName" Text="Text"></asp:Label>
        <br />
    Last Name:
    <asp:Label runat="server" ID="LName" Text="Text"></asp:Label>
        <br />
    Enrollment Date:
    <asp:Label runat="server" ID="EDate" Text="Text"></asp:Label>
    
    </div>
    </form>
</body>
</html>
