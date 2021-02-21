<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HolidayPackage.aspx.cs" Inherits="Practical_3.HolidayPackage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Holiday Travel Package" Font-Bold="True" Font-Underline="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Msglbl" runat="server" Text="Thank you for using our service"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Your Budget :"></asp:Label>
            <asp:TextBox ID="budgetBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Choose your destination: "></asp:Label>
            <table>
               <tr>
                   <td>From</td>
                   <td>To</td>
               </tr>
                <tr>
                   <td>
                       <asp:DropDownList ID="DDLform" runat="server">
                           <asp:ListItem>KL</asp:ListItem>
                           <asp:ListItem>Penang</asp:ListItem>
                       </asp:DropDownList>

                   </td>
                   <td>
                       <asp:DropDownList ID="DDLto" runat="server">
                           <asp:ListItem>Japan</asp:ListItem>
                           <asp:ListItem>Aukland</asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
            </table>
            <asp:Button ID="CheckBtn" runat="server" Text="Check" OnClick="CheckBtn_Click" />
            <br />
            <br />
            <asp:Label ID="Display_Info" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
