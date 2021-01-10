<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="Overview1.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.Overview1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="table-id" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>

                <th scope="col">ID</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">SAYISAL DEĞER</th>
                <th scope="col">GÜNCELLE</th>

            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>

                        <th><%#Eval("ID")%></th>
                        <td><%#Eval("Tittle")%></td>
                        <td><%#Eval("Detail")%></td>

                        <td>

                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"Overview1Guncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-primary" runat="server" Style="color: #fff">Güncelle</asp:HyperLink>

                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
