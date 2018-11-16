<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.master" AutoEventWireup="true" CodeFile="viewuserorders.aspx.cs" Inherits="Employee_viewuserorders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Bookingid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="White">
        <Columns>
            <asp:BoundField DataField="Productname" HeaderText="Productname" SortExpression="Productname" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:BoundField DataField="Bookingid" HeaderText="Bookingid" InsertVisible="False" ReadOnly="True" SortExpression="Bookingid" />
            <asp:BoundField DataField="Productid" HeaderText="Productid" SortExpression="Productid" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="120px" ImageUrl='<%# Eval("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField CommandName="Select" Text="Deliver" />
        </Columns>
       <%-- <EmptyDataTemplate>
            <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("Image") %>' />
        </EmptyDataTemplate>
   --%> </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString %>" SelectCommand="SELECT Add_product.Productname, Add_product.Description, Add_product.Cost, Add_product.Image, cart.Bookingid, cart.Productid FROM Add_product INNER JOIN cart ON Add_product.Productid = cart.Productid WHERE ([Status] = @Status)AND ([username] = @username))">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Status" />
            <asp:Parameter Name="username" />
        </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>



