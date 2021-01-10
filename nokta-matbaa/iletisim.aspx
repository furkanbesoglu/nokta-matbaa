<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="nokta_matbaa.User.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="banner-area banner-bg-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner">
                        <h2><span>Bizimle İletişime Geçin</span></h2>
                        <ul class="page-title-link">
                            <li><a href="#">Anasayfa</a></li>
                            <li><a href="#">İletişim</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="contact" class="section wb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Bizimle İletişime Geçin</h3>

            </div>
            <!-- end title -->

            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="contact_form">
                        <div id="message"></div>
                        <form id="contactform" class="row" action="contact.php" name="contactform" method="post">
                            <fieldset class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input type="text" name="first_name" style="width:100%" id="first_name" class="form-control" placeholder="Adınız">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Soyadınız">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Mail">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input type="text" name="phone" id="phone" class="form-control" placeholder="Telefon">
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <textarea class="form-control" name="comments" id="comments" rows="6" placeholder="Girmek İstediğiniz Detay.."></textarea>
                                </div>
                                <div class="text-center cont-btn">
                                    <button type="submit" value="SEND" id="submit" class="btn11"><span>Gönder</span></button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <div class="row">
                    <div class="offset-md-1 col-sm-10 col-md-10 offset-sm-1 pd-add">
                        <div class="address-item">
                            <div class="address-icon">
                                <i class="icon icon-location2"></i>
                            </div>
                            <h3>Adresimiz</h3>
                            <p>
                             <%# Eval("Adress") %>
                                <br />
                            </p>
                        </div>
                        <div class="address-item">
                            <div class="address-icon">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </div>
                            <h3>E-mail</h3>
                            <p>
                                <%# Eval("Mail") %>
                                <br />
                            </p>
                        </div>
                        <div class="address-item">
                            <div class="address-icon">
                                <i class="icon icon-headphones"></i>
                            </div>
                            <h3>Telefon</h3>
                            <p>
                                <%# Eval("Phone") %>
                                <br />
                                
                            </p>
                        </div>
                    </div>
                </div>
                <!-- end row -->
                    </ItemTemplate>
            </asp:Repeater>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3011.594119505342!2d28.7111019511921!3d40.99036767920096!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caa05664ac7773%3A0x941ea39a1b357a39!2zQ2loYW5naXIsIMWew7xrcmFuIFNrLiBObzoxLCAzNDMxMCBBdmPEsWxhci_EsHN0YW5idWw!5e0!3m2!1str!2str!4v1598341323287!5m2!1str!2str" width="1100" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->
</asp:Content>
