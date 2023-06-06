<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="SiteOgrenciOtomasyon.NotGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">

<div class="form-group">

<div>
<asp:Label for="TxtDersAd" runat="server">Ders Adı</asp:Label>
<asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
</div>

<br />

<div>

  <asp:Label for="TxtOgrID" runat="server">Öğrenci ID</asp:Label>
  <asp:TextBox ID="TxtOgrID" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<br />

<div>
  <asp:Label for="TxtOgradSoyad" runat="server">Öğrenci Adı Soyadı</asp:Label>
  <asp:TextBox ID="TxtOgradSoyad" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<br />

<div>
  <asp:Label for="TxtVize" runat="server">Vize</asp:Label>
  <asp:TextBox ID="TxtVize" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<br />

<div>
  <asp:Label for="TxtFinal" runat="server">Final</asp:Label>
  <asp:TextBox ID="TxtFinal" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<br />

<div>
  <asp:Label for="TxtButunleme" runat="server">Bütünleme</asp:Label>
  <asp:TextBox ID="TxtButunleme" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<br />

<div>
  <asp:Label for="TxtOrt" runat="server">Ortalama</asp:Label>
  <asp:TextBox ID="TxtOrt" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<br />

<div>
  <asp:Label for="TxtDurum" runat="server">Durum</asp:Label>
  <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
</div>


</div>
  <asp:Button ID="BtnHesapla" runat="server" Text="Hesapla" CssClass="btn btn-toolbar" Width="132px" />
  <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" Width="132px" />
</form>
</asp:Content>
