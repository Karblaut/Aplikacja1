<%@ Page Title="wykaz projektów" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="wykaz_projektow.aspx.cs" Inherits="Aplikacja1.wykaz_projektow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT rodzaj.nazwa_rodzaj, status.nazwa_status, projekt.nr_projekt, projekt.temat_projekt, projekt.data_rozpoczencia, projekt.data_zakonczenia, projekt.kwota, projekt.uwagi 
FROM projekt INNER JOIN
 rodzaj ON projekt.Id_rodzaj = rodzaj.Id_rodzaj INNER JOIN 
status ON projekt.id_status = status.id_status"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="nazwa_rodzaj" HeaderText="rodzaj projektu" SortExpression="nazwa_rodzaj" />
            <asp:BoundField DataField="nazwa_status" HeaderText="status" SortExpression="nazwa_status" />
            <asp:BoundField DataField="nr_projekt" HeaderText="nr projektu" SortExpression="nr_projekt" />
            <asp:BoundField DataField="temat_projekt" HeaderText="temat projektu" SortExpression="temat_projekt" />
            <asp:BoundField DataField="data_rozpoczencia" DataFormatString="{0:d}" HeaderText="data rozpoczęcia" SortExpression="data_rozpoczencia" />
            <asp:BoundField DataField="data_zakonczenia" DataFormatString="{0:d}" HeaderText="data zakończenia" SortExpression="data_zakonczenia" />
            <asp:BoundField DataField="kwota" HeaderText="kwota" SortExpression="kwota" />
            <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</asp:Content>
