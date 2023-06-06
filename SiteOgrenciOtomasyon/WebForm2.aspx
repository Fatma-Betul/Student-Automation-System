<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SiteOgrenciOtomasyon.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Forml" runat="server">
<div class="form-group">
<div>
<asp:TextBox ID="Txtbox1" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>
</div>
<br/>
<div>
<asp:TextBox ID="Txtbox2" runat="server" CssClass="form-control" Enabled="False">Ad Soyad</asp:TextBox>
</div>
<br/>
<div>
<asp:TextBox ID="Txtbox3" runat="server" CssClass="form-control" Enabled="False">Mail</asp:TextBox>
</div>
<br/>
<div>
<asp:TextBox ID="Txtbox4" runat="server" CssClass="form-control" Enabled="False">Telefon</asp:TextBox>
</div>
    </div>
    </form>

</asp:Content>
