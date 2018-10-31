<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="userbooking.aspx.cs" Inherits="User_userbooking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {}
    .auto-style3 {
        height: 26px;
        width: 611px;
    }
    .auto-style4 {
        width: 611px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">

    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td style="text-align: center" class="auto-style4">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <br />
                    Event Type<br />
                </td>
                <td class="auto-style1">
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="148px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Reception</asp:ListItem>
                        <asp:ListItem>Baptism</asp:ListItem>
                        <asp:ListItem>House Warming</asp:ListItem>
                        <asp:ListItem>Engagement</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Venue</td>
                <td>
                    <br />
                    <asp:TextBox ID="txtvenue" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">No.of Seats</td>
                <td>
                    <br />
                    <asp:TextBox ID="txtseat" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Date</td>
                <td>
                    <br />
                    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="txtdate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdate">
                    </cc1:CalendarExtender>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <br />
                    Time<br />
                </td>
                <td>
                    <asp:TextBox ID="txttime" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    </form>

</asp:Content>

