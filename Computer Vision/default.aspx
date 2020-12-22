<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FaceMask.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="318px">
            <asp:Label ID="Label2" runat="server" Text="Write image url"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="800px"></asp:TextBox>
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Test" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
