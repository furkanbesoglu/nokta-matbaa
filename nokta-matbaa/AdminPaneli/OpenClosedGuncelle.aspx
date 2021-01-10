<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="OpenClosedGuncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.OpenClosedGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Günler</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtBaslik" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Saat Aralıkları</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtOnyazi" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center" style="margin-top: 10px">Acil Durum(Boş Bırakılabilir)</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtphone" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>
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
