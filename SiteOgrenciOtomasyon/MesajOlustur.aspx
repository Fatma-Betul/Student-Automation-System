﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="SiteOgrenciOtomasyon.MesajOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
<div class="form-group">
<div>
<asp:Label for="TxtGonderen" runat="server">Gönderen</asp:Label>
<asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
</div>
<br />
<div>
    <asp:Label for="TxtAlici" runat="server">Alıcı</asp:Label>
    <asp:TextBox ID="TxtAlici" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<br />
<div>
<asp:Label for="TxtBaslik" runat="server">Mesaj Başlık</asp:Label>
<asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<br />
    
<div>
<asp:Label for="Txticerik" runat="server">Mesaj İçerik</asp:Label>
<textarea id="Txticerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
</div>

</div>
       <%-- Hata var--%>

    <%--<asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info"/>
        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-info"/>--%>
    <%--<asp:Button ID="Button3" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Button3_Click"/>--%>
        <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnGonder_Click" Width="127px"/>
</form>
    
    
</asp:Content>
