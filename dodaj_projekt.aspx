<%@ Page Title="dodaj_projekt" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_projekt.aspx.cs" Inherits="Aplikacja1.dodaj_projekt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
            width: 164px;
        }
        .auto-style5 {
            width: 164px;
        }
        .auto-style6 {
            width: 164px;
            height: 41px;
        }
        .auto-style7 {
            width: 164px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 164px;
            height: 48px;
        }
        .auto-style10 {
            height: 48px;
        }
        .auto-style11 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT * FROM [rodzaj] ORDER BY [nazwa_rodzaj]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT * FROM [status] ORDER BY [nazwa_status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [projekt] WHERE [id_projekt] = @id_projekt" InsertCommand="INSERT INTO [projekt] ([Id_rodzaj], [id_status], [nr_projekt], [temat_projekt], [data_rozpoczencia], [data_zakonczenia], [kwota], [uwagi]) VALUES (@Id_rodzaj, @id_status, @nr_projekt, @temat_projekt, @data_rozpoczencia, @data_zakonczenia, @kwota, @uwagi)" SelectCommand="SELECT * FROM [projekt]" UpdateCommand="UPDATE [projekt] SET [Id_rodzaj] = @Id_rodzaj, [id_status] = @id_status, [nr_projekt] = @nr_projekt, [temat_projekt] = @temat_projekt, [data_rozpoczencia] = @data_rozpoczencia, [data_zakonczenia] = @data_zakonczenia, [kwota] = @kwota, [uwagi] = @uwagi WHERE [id_projekt] = @id_projekt">
        <DeleteParameters>
            <asp:Parameter Name="id_projekt" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="DDL_rodzaj_projektu" Name="Id_rodzaj" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DDL_status_projektu" Name="id_status" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="TB_nr_projektu" Name="nr_projekt" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TB_temat_projektu" Name="temat_projekt" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TB_data_rozpoczecia" DbType="Date" Name="data_rozpoczencia" PropertyName="Text" />
            <asp:ControlParameter ControlID="TB_data_zakonczenia" DbType="Date" Name="data_zakonczenia" PropertyName="Text" />
            <asp:ControlParameter ControlID="TB_kwota" Name="kwota" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="TB_uwagi" Name="uwagi" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_rodzaj" Type="Int32" />
            <asp:Parameter Name="id_status" Type="Int32" />
            <asp:Parameter Name="nr_projekt" Type="String" />
            <asp:Parameter Name="temat_projekt" Type="String" />
            <asp:Parameter DbType="Date" Name="data_rozpoczencia" />
            <asp:Parameter DbType="Date" Name="data_zakonczenia" />
            <asp:Parameter Name="kwota" Type="Decimal" />
            <asp:Parameter Name="uwagi" Type="String" />
            <asp:Parameter Name="id_projekt" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
&nbsp;<table class="auto-style11">
        <tr>
            <td class="auto-style4">rodzaj projektu:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDL_rodzaj_projektu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nazwa_rodzaj" DataValueField="Id_rodzaj" Font-Italic="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">status projektu:<br />
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="DDL_status_projektu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nazwa_status" DataValueField="id_status" Font-Italic="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">nr projektu:</td>
            <td>
                <asp:TextBox ID="TB_nr_projektu" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_nr_projektu" ErrorMessage="nie podano numeru projektu !" ForeColor="Maroon">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">temat projektu:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TB_temat_projektu" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_temat_projektu" ErrorMessage="nie podano tematu projektu !" ForeColor="Maroon">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">data rozpoczęcia</td>
            <td>
                <asp:TextBox ID="TB_data_rozpoczecia" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_data_rozpoczecia" ErrorMessage="nie podano daty rozpoczęcia projektu !" ForeColor="Maroon">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">data zakończenia</td>
            <td>
                <asp:TextBox ID="TB_data_zakonczenia" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">kwota projektu</td>
            <td class="auto-style8">
                <asp:TextBox ID="TB_kwota" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_kwota" ErrorMessage="nie podano kwoty projektu !" ForeColor="Maroon">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">uwagi:</td>
            <td>
                <asp:TextBox ID="TB_uwagi" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="#9B0000" />
    <asp:Button ID="Button1" runat="server" Height="39px" Text="Dodaj projekt" OnClick="Button1_Click" />
</asp:Content>
