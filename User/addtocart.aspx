<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="addtocart.aspx.cs" Inherits="User_addtocart" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">

    <form id="form1" runat="server">
<%--        <table style="width:100%">--%>
<%--            <tr><td colspan="2">--%>
        `<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Productname:
                <asp:Label ID="ProductnameLabel" runat="server" Text='<%# Eval("Productname") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                Cost:
                <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Image") %>' Width="100px" />
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BuyNow" />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT [Productname], [Description], [Cost], [Image] FROM [Add_product] WHERE ([Productid] = @Productid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Productid" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
         
                 </td>
<%--            </tr>
        </table>--%>
       </form>
        </asp:Content>

      