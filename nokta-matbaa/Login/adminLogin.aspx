<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="nokta_matbaa.Login.adminLogin" %>

<!DOCTYPE HTML>
<html lang="en">

<head>
	<title>Nokta-Matbaa Admin Girişi</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Clear login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta-Tags -->
	<!-- Stylesheets -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!--// Stylesheets -->
	<!--fonts-->
	<!-- title -->
	<!-- body -->
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
	<!--//fonts-->
</head>

<body>
	<h1>Nokta-Matbaa Admin Giriş Paneli</h1>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		<form action="#" runat="server" method="post">
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-user" aria-hidden="true"></i> Kullanıcı Adı </label>
                <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Kullanıcı Adınızı Giriniz" runat="server"></asp:TextBox>
                
			</div>
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-envelope" aria-hidden="true"></i> Şifre </label>
				<asp:TextBox ID="txtSifre"  CssClass="form-control" placeholder="Şifrenizi Giriniz" runat="server" TextMode="Password"></asp:TextBox>
				<div class="agile_label">
					<input id="check3" name="check3" type="checkbox" value="show password" onclick="myFunction()">
					<label class="check" for="check3">Şifreyi Göster</label>
				</div>
			</div>
			<!-- script for show password -->
			<script>
				function myFunction() {
					var x = document.getElementById("txtSifre");
					if (x.type === "password") {
						x.type = "text";
					} else {
						x.type = "password";
					}
				}
			</script>
			<!-- //script ends here -->
			<div class="w3ls-bot">
				<div class="switch-agileits">
					<label class="switch">
						<input type="checkbox">
						<span class="slider round"></span>
						Beni Hatırla
					</label>
				</div>
				<div class="form-end">
                    <asp:Button ID="btnGiris" runat="server" Text="GİRİŞ" OnClick="btnGiris_Click"  />
				</div>
				<div class="clearfix"></div>
			</div>
            <asp:Label ID="lblHatalar" runat="server" Text=""></asp:Label>
		</form>
	</div>
	<!-- //form ends here -->
	<!--copyright-->
	<div class="copy-wthree">
		<p>© 2020 Nokta Matbaa. Tüm Hakları Saklıdır | Design by
			<a href="#" target="_blank">Furkan Beşoğlu</a>
		</p>
	</div>
	<!--//copyright-->
</body>

</html>
