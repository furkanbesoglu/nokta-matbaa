<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="ReferansList.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.ReferansList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>Referans ID</th>
                <th>Referans Fotoğraf</th>
                <th>İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("ReferansID") %></th>
                        <td><img src='<%# Eval("ReferansPhotoURL") %>' style="background:black;"/></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" CssClass="btn btn-success" runat="server" NavigateUrl='<%#"ReferansGuncelle.aspx?ID="+Eval("ReferansID")%>'>Güncelle</asp:HyperLink>
                            <br /><br />
                            <asp:HyperLink ID="HyperLink2" CssClass="btn btn-danger" runat="server" NavigateUrl='<%#"ReferansSil.aspx?ID="+Eval("ReferansID")%>'>Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="ReferansEkle.aspx" class="btn btn-primary">Yeni Referans Ekle</a>
</asp:Content>
