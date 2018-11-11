<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="addtocart.aspx.cs" Inherits="User_addtocart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">

    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
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
                Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Image") %>' Width="100px" />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT [Productname], [Description], [Cost], [Image] FROM [Add_product] WHERE ([Productid] = @Productid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Productid" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       </form>
        </asp:Content>

      