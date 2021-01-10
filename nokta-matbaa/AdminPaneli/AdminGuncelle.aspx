<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="AdminGuncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.AdminGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Kullanıcı Adı</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>


        </div>
        <br />
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="box">
                <div class="info">
                    <h5 class="text-center">Şifre</h5>
                    <div class="col-md-12">
                       <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" />
                    </div>
                </div>

            </div>
        </div>
        <br />
        <div class="box">
            <div class="info">

                <div class="col-md-12" style="margin-top: 25px">
                    <asp:Button ID="btnguncelle" CssClass="btn btn-primary" Width="100%" runat="server" Text="Güncelle" OnClick="btnguncelle_Click" />
                </div>
            </div>
            <asp:Label ID="lblhatalar" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
