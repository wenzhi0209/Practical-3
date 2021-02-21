<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical_3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 219px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
            width: 219px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ABC BUS ONLINE BOOKING &amp; TICKETING SYSEM"></asp:Label>
        </div>
        <p>
            <asp:Label ID="lblTime" runat="server"></asp:Label>
        </p>

       <table>
           <tr>
               <td class="auto-style1">
                   <asp:Label ID="Label2" runat="server" Text="Departure Date"></asp:Label></td>
               <td>
                   <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged1"></asp:Calendar>
                   <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style1">Adult</td>
               <td><asp:TextBox ID="txtAdult" runat="server" TextMode="Number"></asp:TextBox></td>
           </tr>
            <tr>
               <td class="auto-style1">Child</td>
               <td><asp:TextBox ID="txtChild" runat="server" TextMode="Number"></asp:TextBox></td>
           </tr>
            <tr>
               <td class="auto-style1">From</td>
               <td>
                   <asp:DropDownList ID="ddlFrom" runat="server">
                       <asp:ListItem>Form Location</asp:ListItem>
                       <asp:ListItem>Hentian Duta</asp:ListItem>
                       <asp:ListItem>Hentian Putra</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
            <tr>
               <td class="auto-style1">Destination</td>
               <td>
                   <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                       <asp:ListItem>Destination Location</asp:ListItem>
                       <asp:ListItem>Seremban</asp:ListItem>
                       <asp:ListItem>Butterworth</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td class="auto-style3">Ticket Price</td>
               <td class="auto-style2">
                   <asp:TextBox ID="txtPrice" runat="server" Enabled="False"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style1" colspan="2">
                   <asp:Label ID="lblError" runat="server" Font-Bold="True"></asp:Label>
               </td>
           </tr>
       </table>
        <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket"
            OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" PostBackUrl="~/ConfirmBooking.aspx" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
            OnMouseOver="this.value='Click if you confirm to reset selection'"
            OnMouseOut="this.value='Cancel'" />
    </form>
</body>
</html>
