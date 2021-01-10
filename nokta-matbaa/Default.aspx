<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="nokta_matbaa.User.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="slider-area">
        <div class="slider-wrapper owl-carousel">
            <asp:Repeater ID="RepeaterSliderContent" runat="server">
                <ItemTemplate>
                    <div class="slider-item text-center home-one-slider-otem slider-item-four slider-bg-one" style="background-image: url('<%# Eval("SliderPhotoURL") %>');">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                    <div class="slider-content-area">
                                        
                                        <div class="slide-text">
                                            <h1 class="homepage-three-title"><%# Eval("Title") %></h1>
                                            <h2><%# Eval("Detail") %>
                                                <br />
                                            </h2>
                                            
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

 

    <div id="services" class="parallax section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Hizmetlerimiz</h3>
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
                                <h3><%# Eval("Tittle") %></h3>
                                <p><%# Eval("Detail") %></p>
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
    <!-- end section -->

    <div id="testimonials" class="parallax section db parallax-off" style="background-image: url('uploads/Banner1.jpeg');">
        <div class="container">
            <div class="section-title text-center">
                <h3>Referanslar</h3>

            </div>
            <!-- end title -->

            <%--                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="testi-carousel owl-carousel owl-theme">
                            <div class="testimonial clearfix">

                                <div class="desc">
                                    <h3><i class="fa fa-quote-left"></i>Wonderful Support!</h3>
                                    <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                                </div>
                                <div class="testi-meta">
                                    <h4>James Fernando <small>- Manager of Racer</small></h4>
                                </div>
                                <!-- end testi-meta -->
                            </div>
                            <!-- end testimonial -->

                            <div class="testimonial clearfix">
                                <div class="desc">
                                    <h3><i class="fa fa-quote-left"></i>Awesome Services!</h3>
                                    <p class="lead">Explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you completed.</p>
                                </div>
                                <div class="testi-meta">
                                    <h4>Jacques Philips <small>- Designer</small></h4>
                                </div>
                                <!-- end testi-meta -->
                            </div>
                            <!-- end testimonial -->

                            <div class="testimonial clearfix">
                                <div class="desc">
                                    <h3><i class="fa fa-quote-left"></i>Great & Talented Team!</h3>
                                    <p class="lead">The master-builder of human happines no one rejects, dislikes avoids pleasure itself, because it is very pursue pleasure. </p>
                                </div>
                                <div class="testi-meta">
                                    <h4>Venanda Mercy <small>- Newyork City</small></h4>
                                </div>
                                <!-- end testi-meta -->
                            </div>
                            <!-- end testimonial -->
                            <div class="testimonial clearfix">
                                <div class="desc">
                                    <h3><i class="fa fa-quote-left"></i>Wonderful Support!</h3>
                                    <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                                </div>
                                <div class="testi-meta">
                                    <h4>James Fernando <small>- Manager of Racer</small></h4>
                                </div>
                                <!-- end testi-meta -->
                            </div>
                            <!-- end testimonial -->

                            <div class="testimonial clearfix">
                                <div class="desc">
                                    <h3><i class="fa fa-quote-left"></i>Awesome Services!</h3>
                                    <p class="lead">Explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you completed.</p>
                                </div>
                                <div class="testi-meta">
                                    <h4>Jacques Philips <small>- Designer</small></h4>
                                </div>
                                <!-- end testi-meta -->
                            </div>
                            <!-- end testimonial -->

                            <div class="testimonial clearfix">
                                <div class="desc">
                                    <h3><i class="fa fa-quote-left"></i>Great & Talented Team!</h3>
                                    <p class="lead">The master-builder of human happines no one rejects, dislikes avoids pleasure itself, because it is very pursue pleasure. </p>
                                </div>
                                <div class="testi-meta">
                                    <h4>Venanda Mercy <small>- Newyork City</small></h4>
                                </div>
                                <!-- end testi-meta -->
                            </div>
                            <!-- end testimonial -->
                        </div>
                        <!-- end carousel -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->--%>

            <hr class="hr1">

            <div class="row logos">
                <asp:Repeater ID="RepeaterRefernas" runat="server">
                    <ItemTemplate>
                        <div class="col-md-2 col-sm-2 wow fadeInUp">
                            <a href="#">
                                <img src="<%# Eval("ReferansPhotoURL") %>" alt="" class="img-repsonsive"></a>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- end row -->

        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="parallax section noover" data-stellar-background-ratio="0.7" style="background-image: url('uploads/parallax_05.png');">
        <div class="container">
            <div class="row text-center align-items-center">
                <div class="col-md-6">
                    <div class="customwidget text-left">
                         <img src="images/logos/nokta-logo.png" alt="nokta-matbaa" class="img-fluid wow fadeInUp">
                        <h1>Nokta Matbaa&Reklamcılık</h1>
                        <p>İşimizi Özgüvenle ve Kaliteyle Yapıyoruz.ENgin Tecrübemiz ve Uzman Kadromuzla Nokta Matbaa&Reklamcılık Olarak Başarılara Koşmaya Devam Ediyoruz Sizide Başarımızın Arasına Katmak İsteriz. </p>
                       
                        <ul class="list-inline">
                            <asp:Repeater ID="RepeaterQuality" runat="server">
                                <ItemTemplate>
                                    <li><i class="fa fa-check"></i><%# Eval("Subtittle") %></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>

                        <!-- end list -->
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">

                    <div class="text-center image-center hidden-sm hidden-xs">
                        <img src="uploads/device_03.png" alt="" class="img-fluid wow fadeInUp">
                    </div>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

</asp:Content>
