<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster1.master" AutoEventWireup="true" CodeFile="addfood.aspx.cs" Inherits="Admin_addfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100" align="center">
       <tr>
            <td class="text-center" colspan="2">ADD FOODITEM</td>
        </tr>
        <tr>
            <td style="height: 72px; width: 405px;">Food Type</td>
            <td style="height: 72px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="26px" RepeatDirection="Horizontal">
                    <asp:ListItem>Veg</asp:ListItem>
                    <asp:ListItem>Non-Veg</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="height: 35px; width: 405px;">Meal Type</td>
            <td style="height: 35px">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Lunch</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 405px">
                <br />
                Dish Type<br />
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="102px">
                    <asp:ListItem>Delicious</asp:ListItem>
                    <asp:ListItem>Spicy</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 405px">
                <br />
                Dish Name<br />
            </td>
            <td>
                <asp:TextBox ID="txtdishname" runat="server" Height="18px" Width="102px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 405px; height: 50px;">
                <br />
                Food Cost<br />
            </td>
            <td style="height: 50px">
                <asp:TextBox ID="txtfoodcost" runat="server" Height="18px" Width="102px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="Transparent" ForeColor="Blue" OnClick="Button1_Click" Text="Add" Width="118px" />
            </td>
        </tr>
        </table>
</asp:Content>

