<%@ Page Title="" Language="C#" MasterPageFile="~/PMJornaleros.master" AutoEventWireup="true" CodeFile="frmElegirTarea.aspx.cs" Inherits="frmElegirTarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td align="center" class="style1" colspan="3">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="16pt" Font-Underline="True" Text="Elegir TAREA"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="Label3" runat="server" Text="Lista de tareas posibles"></asp:Label>
        </td>
        <td align="center">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="123px">
                <asp:ListItem Value="Tarea 1"></asp:ListItem>
                <asp:ListItem>Tarea 2</asp:ListItem>
                <asp:ListItem>Tarea 3</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="center">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Aceaptar" 
                Width="200px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

