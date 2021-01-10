<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.ContactList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="table-id" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <%--                                    <th scope="col">PERSON ID</th>--%>
                <th scope="col">ID</th>
                <th scope="col">Adress</th>
                <th scope="col">Mail</th>
                <th scope="col">Telefon</th>
                <th scope="col">Gücenlle</th>

            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <%--                                            <td><%#Eval("personID")%></td>--%>
                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("Adress")%></td>
                        <td><%#Eval("Mail")%></td>
                        <td><%#Eval("Phone")%></td>



                        <td>

                            <asp:HyperLink ID="hyperOdemeGuncel" NavigateUrl='<%#"ContactGuncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-primary" runat="server" Style="color: #fff" Text="GÜNCELLE">
                            </asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                
                          
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <table id="table-id1" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <%--                                    <th scope="col">PERSON ID</th>--%>
                <th scope="col">ID</th>
                <th scope="col">Günler</th>
                <th scope="col">Saat Aralıkları</th>
                <th scope="col">Acil Durum Mesajı</th>
                <th scope="col">Güncelle</th>

            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <tr>
                        <%--                                            <td><%#Eval("personID")%></td>--%>
                        <td><%#Eval("ID")%></td>
                        <td><%#Eval("DayRange")%></td>
                        <td><%#Eval("Clock")%></td>
                        <td><%#Eval("EmergencyText")%></td>



                        <td>

                            <asp:HyperLink ID="hyperOdemeGuncel" NavigateUrl='<%#"OpenClosedGuncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-primary" runat="server" Style="color: #fff" Text="GÜNCELLE">
                            </asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                
                          
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
