<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="SocialMedia.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.SocialMedia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>İnstagram</th>
                <th>Facebook</th>
                <th>Twitter</th>
                <th>İnstagram 2</th>
                <th>İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("ID") %></th>
                        <td><%# Eval("instagram") %></td>
                        <td><%# Eval("Facebook") %></td>
                        <td><%# Eval("Twitter") %></td>
                        <td><%# Eval("instagramTwo") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"SosyalMediaGuncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
