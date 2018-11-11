<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="view decoration.aspx.cs" Inherits="User_view_decoration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
     <form id="form1" runat="server">
     
         <table class="auto-style2">
             <tr>
                 <td>VIEW PRODUCT DETAILS<br />
                     <br />
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Decorationid" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                         <Columns>
                             <asp:BoundField DataField="Decorationid" HeaderText="Decorationid" InsertVisible="False" ReadOnly="True" SortExpression="Decorationid" />
                             <asp:BoundField DataField="LightName" HeaderText="LightName" SortExpression="LightName" />
                             <asp:BoundField DataField="LightType" HeaderText="LightType" SortExpression="LightType" />
                             <asp:BoundField DataField="LightCost" HeaderText="LightCost" SortExpression="LightCost" />
                             <asp:BoundField DataField="FlowerName" HeaderText="FlowerName" SortExpression="FlowerName" />
                             <asp:BoundField DataField="Flower" HeaderText="Flower" SortExpression="Flower" />
                             <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                             <asp:ButtonField CommandName="Select" HeaderText="Select" Text="Select" />
                         </Columns>
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT * FROM [dbdecoration]"></asp:SqlDataSource>
                 </td>
             </tr>
         </table>
     
</form>
</asp:Content>

