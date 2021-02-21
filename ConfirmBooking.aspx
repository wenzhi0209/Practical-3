<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="Practical_3.ConfirmBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ABC BUS BOOKING CONFIRMATION"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="You hace confirmed your booking with the following details"></asp:Label>

            <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label>

            <asp:Label ID="Label4" runat="server" Text="Please make payment at our counter."></asp:Label>
        </div>
    </form>
</body>
</html>
