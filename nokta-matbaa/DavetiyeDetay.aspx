<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="DavetiyeDetay.aspx.cs" Inherits="nokta_matbaa.User.DavetiyeDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css2/style1.css" rel="stylesheet" />

    <section class="page-section padding-30">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="container">
                    <div class="row">
                        <!-- Content -->
                        <div class="col-md-8 col-md-push-4 margin-bottom-15">
                            <a title="Main Image" class="fancybox-pop fancybox.image" href="<%# Eval("PhotoURL") %>" rel="portfolio-main">
                                <img src="<%# Eval("PhotoURL") %>" alt="portfolio" class="img-responsive">
                            </a>
                        </div>


                        <!-- Sidebar -->


                        <div class="col-md-4 col-md-pull-8">

                            <h4>Ürün Detay</h4>
                            <hr>
                            <div class="portfolio-details">
                                <p>
                                    <strong style="font-size:24px;">Ürün İsmi: <%# Eval("Tittle") %></strong> 
                            <br />
                                    <strong style="font-size:24px;">Fiyatı: <%# Eval("Fiyat") %></strong>   
                                     <br />
                                    <strong style="font-size:24px;">Ürün Kodu: <%# Eval("UrunCodu") %></strong>                      
                                     <br />
                                    <strong style="font-size:24px; word-break:break-word;">Detay: <%# Eval("Detail") %></strong>                      
                                </p>
                                
                            </div>

                        </div>

                    </div>

                </div>
                
     <div id="services" class="parallax section lb">
         <div class="container">
             <div class="section-title text-center">
             </div>
             <!-- end title -->

             <div class="owl-services owl-carousel owl-theme">

                 <div class="service-widget">
                     <div class="post-media wow fadeIn">
                         <a href="<%# Eval("PhotoURL1") %>" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                         <img style="height:170px" src="<%# Eval("PhotoURL1") %>" alt="" class="img-fluid img-rounded">
                     </div>

                 </div>
                 <div class="service-widget">
                     <div class="post-media wow fadeIn">
                         <a href="<%# Eval("PhotoURL2") %>" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                         <img style="height:170px" src="<%# Eval("PhotoURL2") %>" alt="" class="img-fluid img-rounded">
                     </div>

                 </div>
                 <div class="service-widget">
                     <div class="post-media wow fadeIn">
                         <a href="<%# Eval("PhotoURL3") %>" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                         <img style="height:170px" src="<%# Eval("PhotoURL3") %>" alt="" class="img-fluid img-rounded">
                     </div>

                 </div>

                 <!-- end service -->


             </div>
             <!-- end row -->


         </div>
         <!-- end container -->
     </div>
            </ItemTemplate>
        </asp:Repeater>
    </section>
</asp:Content>
