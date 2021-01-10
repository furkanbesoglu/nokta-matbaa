<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="Hizmetlerimiz.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.Hizmetlerimiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Kategori Adı</th>
                <th>Başlık</th>
                <th>Detay</th>
                <th>Ürün Kodu</th>
                <th>Fiyat</th>
                <th>Photo</th>
                <th>Photo1</th>
                <th>Photo2</th>
                <th>Photo3</th>
                <th>İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%# Eval ("ID") %></th>
                        <td><%# Eval ("Name") %></td>
                        <td><%# Eval ("Tittle") %></td>
                        <td><%# Eval ("Detail") %></td>
                        <td><%# Eval ("UrunCodu") %></td>
                        <td><%# Eval ("Fiyat") %></td>
                        <td><%# Eval ("PhotoURL") %></td>
                        <td><%# Eval ("PhotoURL1") %></td>
                        <td><%# Eval ("PhotoURL2") %></td>
                        <td><%# Eval ("PhotoURL3") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"HizmetlerimizGuncelle.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                            <br />
                            <br />
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"HizmetSil.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="YeniHizmetEkle.aspx" class="btn btn-info">Yeni Hizmet Ekle</a>
</asp:Content>
