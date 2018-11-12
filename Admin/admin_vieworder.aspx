<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster1.master" AutoEventWireup="true" CodeFile="admin_vieworder.aspx.cs" Inherits="Admin_admin_vieworder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Bookingid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Bookingid" HeaderText="Bookingid" InsertVisible="False" ReadOnly="True" SortExpression="Bookingid" />
            <asp:BoundField DataField="Productid" HeaderText="Productid" SortExpression="Productid" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:ButtonField CommandName="Select" Text="Approve" />
            <asp:ButtonField CommandName="Reject" Text="Reject" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT cart.Bookingid, cart.Productid, cart.username, dbregister.address, dbregister.city FROM cart INNER JOIN dbregister ON cart.username = dbregister.username"></asp:SqlDataSource>
</asp:Content>

