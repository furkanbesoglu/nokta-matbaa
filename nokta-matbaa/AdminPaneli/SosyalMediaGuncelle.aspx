﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/ana.Master" AutoEventWireup="true" CodeBehind="SosyalMediaGuncelle.aspx.cs" Inherits="nokta_matbaa.AdminPaneli.SosyalMediaGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">İnstagram</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtinstagram" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Facebook</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtfacebook" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">Twitter</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtTwitter" CssClass="form-control" />

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="box">
                    <div class="info">
                        <h5 class="text-center">İnstagram 2</h5>
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtinstagramTwo" CssClass="form-control" />

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
                        <asp:Button ID="btnGüncelle" CssClass="btn btn-primary" Width="100%" runat="server" Text="Güncelle" OnClick="btnGüncelle_Click"/>
                    </div>
                </div>

            </div>
        </div>
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
