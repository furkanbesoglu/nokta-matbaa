<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="AboutList.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.AboutList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table id="table-id" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <%--                                    <th scope="col">PERSON ID</th>--%>
                <th scope="col">ID</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">ÖNYAZI</th>
                <th scope="col">HAKKIMIZDA</th>
                <th scope="col">FOTOĞRAF</th>
                <th scope="col">VİDEO</th>
                <th scope="col">GÜNCELLE</th>

            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <%--                                            <td><%#Eval("personID")%></td>--%>
                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("Baslik")%></td>
                        <td><%#Eval("ÖnYazi")%></td>
                        <td><%#Eval("Hakkimizda")%></td>
                        <td>
                            <asp:Image ID="imageControl" Width="100px" Height="100px" runat="server" ImageUrl='<%# Eval("VideoURL") %>'></asp:Image>
                        </td>
                        <td>
                            <asp:Image ID="video" Width="100px" Height="100px" runat="server" ImageUrl='<%# Eval("FotografURL") %>'></asp:Image>
                        </td>
                        <td>

                            <asp:HyperLink ID="hyperOdemeGuncel" NavigateUrl='<%#"AboutGUNCELLE.aspx?ID="+Eval("ID")%>' CssClass="btn btn-primary" runat="server" Style="color: #fff" Text="GÜNCELLE">
                            </asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                
                          
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
