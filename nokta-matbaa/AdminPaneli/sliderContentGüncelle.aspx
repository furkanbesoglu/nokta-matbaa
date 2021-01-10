<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="sliderContentGüncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.sliderContentGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Başlık</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtBaslik" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>

            <br />
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Detay</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtDetail" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <label style="margin-left: 4%;">Eklenecek Ön Görsel</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadVideo.jpg" />
            <asp:FileUpload ID="fluPicture" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        <br />

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="box">
                <div class="info">

                    <div class="col-md-12" style="margin-top: 25px">
                        <asp:Button ID="btnGüncelle" CssClass="btn btn-primary" Width="100%" runat="server" Text="Güncelle" OnClick="btnGüncelle_Click" />
                    </div>
                </div>

            </div>
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
