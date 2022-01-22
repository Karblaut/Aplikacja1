<%@ Page Title="edytuj status projektu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edytuj_status.aspx.cs" Inherits="Aplikacja1.edytuj_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [status] WHERE [id_status] = @id_status" InsertCommand="INSERT INTO [status] ([nazwa_status]) VALUES (@nazwa_status)" SelectCommand="SELECT * FROM [status]" UpdateCommand="UPDATE [status] SET [nazwa_status] = @nazwa_status WHERE [id_status] = @id_status">
    <DeleteParameters>
        <asp:Parameter Name="id_status" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nazwa_status" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nazwa_status" Type="String" />
        <asp:Parameter Name="id_status" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_status" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="id_status" HeaderText="id_status" InsertVisible="False" ReadOnly="True" SortExpression="id_status" Visible="False" />
        <asp:BoundField DataField="nazwa_status" HeaderText="status projektu" SortExpression="nazwa_status">
        <FooterStyle HorizontalAlign="Center" VerticalAlign="Bottom" />
        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
        </asp:BoundField>
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
<p>
</p>
</asp:Content>
