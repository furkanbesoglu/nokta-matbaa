<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="logoGuncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.logoGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <label style="margin-left: 4%;">Eklenecek Ön Görsel Footer</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture1" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadVideo.jpg" />
            <asp:FileUpload ID="fluPicture1" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        <br />
        <label style="margin-left: 4%;">Eklenecek Ön Görsel Navbar</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadVideo.jpg" />
            <asp:FileUpload ID="fluPicture" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        <br />
        <div class="box">
            <div class="info">

                <div class="col-md-12" style="margin-top: 25px">
                    <asp:Button ID="btnguncelle" CssClass="btn btn-primary" Width="100%" runat="server" Text="Güncelle" OnClick="btnguncelle_Click"/>
                </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </div>

</asp:Content>
