<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="ServicesList.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.ServicesList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>ID</th>
                <th>Başlık</th>
                <th>Detay</th>
                <th>Fotoğraf</th>
                <th>İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("ID") %></th>
                        <td><%# Eval("Tittle") %></td>
                        <td><%# Eval("Detail") %></td>
                        <td>
                            <img src='<%# Eval("PhotoURL") %>' height="150" width="150" />
                        </td>
                        <td>
                            <asp:HyperLink ID="hyperOdemeGuncel" NavigateUrl='<%#"ServicesGuncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-success" runat="server" Style="color: #fff" Text="GÜNCELLE"></asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="ServicesEkle.aspx" class="btn btn-primary">Yeni Servis Ekle</a>
</asp:Content>
