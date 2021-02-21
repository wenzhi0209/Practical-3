<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Breakfast.aspx.cs" Inherits="Practical_3.Breakfast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text="FLYING BREAKFAST.COM" Font-Bold="True"></asp:Label>
            <br />
            Order your brakfast online. Online order starts 2.00am-11am everyday.<br />
            <table> 
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Breakfast Set"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblset" runat="server" AutoPostBack="True">
                            <asp:ListItem Selected="True">SET 1</asp:ListItem>
                            <asp:ListItem>SET 2</asp:ListItem>
                            <asp:ListItem>SET 3</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblSetDetails" runat="server"></asp:Label>
            <br />
           <table>
               <tr>
                   <td>

                   </td>
                   <td>
                       Quantity
                   </td>
                   <td>
                       Total(RM)
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:CheckBox ID="cb1" runat="server" Text="SET 1" />
                   </td>
                   <td>
                       <asp:TextBox ID="qtySet1" runat="server" TextMode="Number"></asp:TextBox>
                   </td>
                   <td>
                       <asp:Label ID="LBLpriceSET1" runat="server"></asp:Label>
                   </td>
               </tr>
              <tr>
                   <td>
                       <asp:CheckBox ID="cb2" runat="server" Text="SET 2" />
                   </td>
                   <td>
                       <asp:TextBox ID="qtySet2" runat="server" TextMode="Number"></asp:TextBox>
                   </td>
                   <td>
                       <asp:Label ID="LBLpriceSET2" runat="server"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td>
                       <asp:CheckBox ID="cb3" runat="server" Text="SET 3" />
                   </td>
                   <td>
                       <asp:TextBox ID="qtySet3" runat="server" TextMode="Number"></asp:TextBox>
                   </td>
                   <td>
                       <asp:Label ID="LBLpriceSET3" runat="server"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>

                   </td>
                   <td>
                       Total(RM)
                   </td>
                   <td>
                       <asp:Label ID="LBLtotal" runat="server"></asp:Label>
                   </td>
               </tr>
           </table>
            <br />
            <asp:Button ID="CalcBTN" runat="server" Text="Calculate" OnClick="CalcBTN_Click" />
            <asp:Button ID="cancelBtn" runat="server" Text="Cancel" OnClick="cancelBtn_Click"/>
            <br />
            <br />
            <asp:Button ID="conorderBtn" runat="server" Text="Confirm Order" />
        </div>
    </form>
</body>
</html>
