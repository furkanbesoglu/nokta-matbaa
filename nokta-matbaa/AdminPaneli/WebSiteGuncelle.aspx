<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="WebSiteGuncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.WebSiteGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Başlık</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtBaslik" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>


        </div>
        <br />
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="box">
                <div class="info">
                    <h5 class="text-center">Detay</h5>
                    <div class="col-md-12">
                        <textarea runat="server" id="textareaIcerik" cols="137" rows="10"></textarea>
                    </div>
                </div>

            </div>
        </div>
        <label style="margin-left: 4%;">Eklenecek Ön Görsel</label>
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
                    <asp:Button ID="btnguncelle" CssClass="btn btn-primary" Width="100%" runat="server" Text="Güncelle" OnClick="btnguncelle_Click" />
                </div>
            </div>
            <label id="lblhatalar" runat="server"></label>
        </div>
    </div>
</asp:Content>
