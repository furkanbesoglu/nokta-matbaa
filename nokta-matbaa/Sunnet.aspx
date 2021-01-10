<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Sunnet.aspx.cs" Inherits="nokta_matbaa.User.Sunnet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner-area banner-bg-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner">
                        <h2><span>Sünnet</span></h2>
                        <ul class="page-title-link">
                            <li><a href="#">Ansayfa</a></li>
                            <li><a href="#">Sünnet</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="services" class="parallax section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3></h3>
                <p class="lead"></p>
            </div>
            <!-- end title -->
            
            <div class="owl-services owl-carousel owl-theme">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="service-widget">
                            <div class="post-media wow fadeIn">
                                <a href="<%# Eval("PhotoURL") %>" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                <img src="<%# Eval("PhotoURL") %>" alt="" class="img-fluid img-rounded">
                            </div>
                            <div class="service-dit">
                                <a href='<%# Eval("ID","DavetiyeDetay.aspx?ID={0}") %>'><h3><%# Eval("Tittle") %></h3></a>
                                <p><h3>Ürün Kodu: <%# Eval("UrunCodu") %></h3>
                                    <h4>Fiyat: <%# Eval("Fiyat") %></h4>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <!-- end service -->


            </div>
            <!-- end row -->

            <hr class="hr1">
        </div>
        <!-- end container -->
    </div>
</asp:Content>
