<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="ReferansGuncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.ReferansGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <label style="margin-left: 4%;">Eklenecek Görsel</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture" Width="200px" Style="background-color:black;" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadVideo.jpg" />
            <asp:FileUpload ID="fluPicture" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        <div class="box">
            <div class="info">

                <div class="col-md-12" style="margin-top: 25px">
                    <asp:Button ID="btnguncelle" CssClass="btn btn-primary" Width="100%" runat="server" Text="Güncelle" OnClick="btnguncelle_Click" />
                </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
