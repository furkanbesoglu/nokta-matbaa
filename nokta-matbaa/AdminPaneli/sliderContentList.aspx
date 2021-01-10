<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="sliderContentList.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.sliderContentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="table-id1" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <%--                                    <th scope="col">PERSON ID</th>--%>
                <th scope="col">ID</th>
                <th scope="col">Fotoğraf</th>
                <th scope="col">Başlık</th>
                <th scope="col">Detay</th>
                <th scope="col">İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <%--                                            <td><%#Eval("personID")%></td>--%>
                        <td><%#Eval("ID")%></td>
                        <td><img src="<%#Eval("SliderPhotoURL")%>" style="width:100px; height:100px;" /></td>
                        <td><%#Eval("Title")%></td>
                        <td><%#Eval("Detail")%></td>

                        <td>

                            <asp:HyperLink ID="hyperOdemeGuncel" NavigateUrl='<%#"sliderContentGüncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-primary" runat="server" Style="color: #fff" Text="GÜNCELLE">
                            </asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                
                          
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
   <a href="sliderContentEkle.aspx" class="btn btn-success">Yeni Slider Ekle</a>
</asp:Content>
