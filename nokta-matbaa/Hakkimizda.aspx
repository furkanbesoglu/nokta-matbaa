<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="nokta_matbaa.User.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner-area banner-bg-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner">
                        <h2><span>Hakkımızda</span></h2>
                        <ul class="page-title-link">
                            <li><a href="#">Ansayfa</a></li>
                            <li><a href="#">Hakkımızda</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="about" class="section wb">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6">
                            <div class="message-box">
                                <h4>Hakkımızda</h4>
                                <h2><%# Eval("Baslik") %></h2>
                                <p class="lead"><%# Eval("ÖnYazi") %></p>

                                <p><%# Eval("Hakkimizda") %>. </p>


                            </div>
                            <!-- end messagebox -->
                        </div>
                        <!-- end col -->
                        <div class="col-md-6">
                            <div class="post-media wow fadeIn">
                                <img src="<%# Eval("FotografURL") %>" alt="" class="img-fluid img-rounded">
                                <a href="<%# Eval("VideoURL") %>" data-rel="prettyPhoto[gal]"></a>
                            </div>
                            <!-- end media -->
                              <div class="post-media wow fadeIn">
                                <img src="<%# Eval("VideoURL") %>" alt="" class="img-fluid img-rounded">
                                
                            </div>
                        </div>
                        <!-- end col -->
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- end row -->

            <hr class="hr1">


        </div>
        <!-- end container -->
    </div>
    <!-- end section -->
</asp:Content>
