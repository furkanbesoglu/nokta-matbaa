<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.AdminList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Kullanıcı Adı</th>
                <th>Şifre</th>
                <th>İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("id") %></th>
                        <td><%# Eval("Username") %></td>
                        <td><%# Eval("password") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"AdminGuncelle.aspx?ID="+Eval("id")%>' CssClass="btn btn-success" runat="server">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
