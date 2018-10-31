<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster1.master" AutoEventWireup="true" CodeFile="adddecoration.aspx.cs" Inherits="Admin_adddecoration" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table class="w-100">
        <tr>
            <td class="text-center" colspan="2">ADD LIGHT & Flowers<br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Light Name<br />
            </td>
            <td>
                <asp:TextBox ID="txtlightname" runat="server" Height="16px" Width="120px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Light Type<br />
            </td>
            <td>
                <asp:TextBox ID="txtlighttype" runat="server" Height="16px" Width="120px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Light Cost<br />
            </td>
            <td>
                <asp:TextBox ID="txtlightcost" runat="server" Height="16px" Width="120px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
&nbsp;&nbsp; Upload Lights<br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                Flower Name<br />
            </td>
            <td>
                <asp:TextBox ID="txtflowername" runat="server" Height="16px" Width="120px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Flower Cost<br />
            </td>
            <td>
                <asp:TextBox ID="txtflowercost" runat="server" Height="16px" Width="120px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Upload Flower<br />
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Height="17px" Width="155px" />
            </td>
        </tr>
    </table>


</asp:Content>

