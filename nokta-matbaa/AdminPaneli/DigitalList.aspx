<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="DigitalList.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.DigitalList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table id="gdArama" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>

                <th scope="col">ID</th>

                <th scope="col">Başlık</th>

                <th scope="col">Detay</th>

                <th scope="col">Fotoğraf</th>

                <th scope="col">Güncelle</th>

                <th scope="col">Sil</th>


            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("Tittle")%></td>

                        <td><%#Eval("Detail")%></td>
                        <td>
                            <asp:Image ID="imageControl" Width="300px" Height="300px" runat="server" ImageUrl='<%# Eval("PhotoURL") %>'></asp:Image>
                        </td>
                        <td>
                            <asp:HyperLink ID="hyperGuncelle" NavigateUrl='<%#"DigitalGuncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-primary" runat="server">Güncelle</asp:HyperLink>

                        </td>
                        <td>
                            <asp:HyperLink ID="hyperSIL" NavigateUrl='<%#"DigitalSil.aspx?ID="+Eval("ID")%>' CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink>
                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
     <asp:HyperLink ID="hyperYeni" NavigateUrl="DigitalNEW.aspx" CssClass="btn btn-info" runat="server">Yeni Ekle</asp:HyperLink>
    
</asp:Content>
