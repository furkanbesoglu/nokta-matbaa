<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="logoList.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.logoList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <table id="gdArama" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>

                <th scope="col">ID</th>

                <th scope="col">Logo Fotoğraf Navbar</th>

                <th scope="col">Logo Fotoğraf Footer</th>

                <th scope="col">Güncelle</th>

         

            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID")%></td>
                        <td>
                            <asp:Image ID="imageControl" Width="300px" Height="300px" runat="server" ImageUrl='<%# Eval("logoPhotoURL") %>'></asp:Image>
                        </td>
                         <td>
                            <asp:Image ID="image1" Width="300px" Height="300px" runat="server" ImageUrl='<%# Eval("logoPhotoURL1") %>'></asp:Image>
                        </td>
                        <td>
                            <asp:HyperLink ID="hyperGuncelle" NavigateUrl='<%#"logoGuncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-primary" runat="server">Güncelle</asp:HyperLink>

                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
