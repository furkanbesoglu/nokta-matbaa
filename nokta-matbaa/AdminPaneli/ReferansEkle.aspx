<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="ReferansEkle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.ReferansEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <label style="margin-left: 4%;">Eklenecek Görsel</label>
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
                    <asp:Button ID="btnNEW" CssClass="btn btn-info" Width="100%" runat="server" Text="Yeni Ekle" OnClick="btnNEW_Click"/>
                </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>

