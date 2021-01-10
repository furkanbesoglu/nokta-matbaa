<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="DijitalBaski.aspx.cs" Inherits="nokta_matbaa.User.DijitalBaski" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="banner-area banner-bg-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner">
                        <h2><span>Dijital Baskı</span></h2>
                        <ul class="page-title-link">
                            <li><a href="#">Ansayfa</a></li>
                            <li><a href="#">Dijital Baskı</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="portfolio" class="section wb">
        <div class="container">
            <div class="section-title text-center">
            </div>
            <!-- end title -->
        </div>
        <!-- end container -->

        <div class="container-fluid">


            <hr class="invis">

            <div id="da-thumbs" class="da-thumbs portfolio">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="post-media pitem item-w1 item-h1 cat1">
                            <a href="<%# Eval("PhotoURL") %>" data-rel="prettyPhoto[gal]">
                                <img src="<%# Eval("PhotoURL") %>" alt="" class="img-responsive">
                                <div>
                                    <h3><%# Eval("Tittle") %></h3>
                                    <i class="flaticon-unlink"></i>
                                </div>
                            </a>
                            <br />
                            <p style="color: #212529; word-wrap: break-word;">
                                <h1><%# Eval("Tittle") %></h1>
                                <%# Eval("Detail") %>
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- end portfolio -->
        </div>

        <!-- end container -->
    </div>
    <!-- end section -->
</asp:Content>
