<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="AboutGuncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.AboutGuncelle" %>
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

            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Ön Yazı</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtOnyazi" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="box">
                <div class="info">
                    <h5 class="text-center">Hakkımızda</h5>
                    <div class="col-md-12">
                        <textarea runat="server" id="textareaIcerik" cols="137" rows="10"></textarea>
                    </div>
                </div>

            </div>
            <br />
            <label style="margin-left: 4%;">Eklenecek Görsel 2</label>
            <br />
            <div class="col-lg-12" style="margin-left: 15px;">
                <asp:Image ID="imgPicture" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadFoto.jps" />
                <asp:FileUpload ID="fluPicture" onchange="this.form.submit();"
                    runat="server" Width="240" />
            </div>
        </div>
        <label style="margin-left: 4%;">Eklenecek Ön Görsel</label>
        <br />
        <div class="col-lg-12" style="margin-left: 15px;">
            <asp:Image ID="imgPicture1" Width="200px" Height="200px" runat="server" ImageUrl="~/Admins/images/uploadFoto.jpg" />
            <asp:FileUpload ID="fluPicture1" onchange="this.form.submit();"
                runat="server" Width="240" />
        </div>
        

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="box">
                <div class="info">

                    <div class="col-md-12" style="margin-top: 25px">
                        <asp:Button ID="btnGüncelle" CssClass="btn btn-primary" Width="100%" runat="server" Text="Güncelle" OnClick="btnGüncelle_Click" />
                    </div>
                </div>

            </div>
        </div>
    </div>
    <asp:Label ID="lblhatalar" runat="server" Text=""></asp:Label>
</asp:Content>
