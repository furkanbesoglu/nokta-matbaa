<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="HizmetlerimizGuncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.HizmetlerimizGuncelle" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Kategori</h5>
                        <div class="col-md-12">
                            <dx:ASPxComboBox ID="xcmbKategori" runat="server" DataSourceID="SqlDataSource1" TextField="Name" ValueField="ID" CssClass="form-control"></dx:ASPxComboBox>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connnokta_matbaa %>" SelectCommand="SELECT [ID], [Name] FROM [Category]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br />
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="box">
                <div class="info">
                    <h5 class="text-center">Başlık</h5>
                    <div class="col-md-12">
                        <asp:TextBox runat="server" ID="txtbaslik" CssClass="form-control" />
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
        <br />
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="box">
                <div class="info">
                    <h5 class="text-center">Ürün Kodu</h5>
                    <div class="col-md-12">
                        <asp:TextBox runat="server" ID="txturunCodu" CssClass="form-control" MaxLength="10" />
                    </div>
                </div>

            </div>
        </div>

        <br />
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="box">
                <div class="info">
                    <h5 class="text-center">Fiyat</h5>
                    <div class="col-md-12">
                        <asp:TextBox runat="server" ID="txtFiyat" CssClass="form-control" MaxLength="10"/>
                    </div>
                </div>

            </div>
        </div>
        <label style="margin-left: 4%;">Eklenecek Görsel</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadVideo.jpg" />
            <asp:FileUpload ID="fluPicture" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        <br />
        <label style="margin-left: 4%;">Eklenecek Görsel1</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture1" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadVideo.jpg" />
            <asp:FileUpload ID="fluPicture1" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        <br />
        <label style="margin-left: 4%;">Eklenecek Görsel2</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture2" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadVideo.jpg" />
            <asp:FileUpload ID="fluPicture2" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        <br />
        <label style="margin-left: 4%;">Eklenecek Görsel3</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture3" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadVideo.jpg" />
            <asp:FileUpload ID="fluPicture3" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        <br />
        <div class="box">
            <div class="info">

                <div class="col-md-12" style="margin-top: 25px">
                    <asp:Button ID="btnGuncelle" CssClass="btn btn-info" Width="100%" runat="server" Text="Hizmetlerimizi Güncelle" OnClick="btnGuncelle_Click" />
                </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
