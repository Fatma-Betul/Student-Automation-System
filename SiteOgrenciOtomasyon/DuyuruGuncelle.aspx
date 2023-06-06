<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="SiteOgrenciOtomasyon.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server" >    

         <div class="form-group">
             
             <br />
             <div>
                <asp:Label for="TxtDuyuruId" runat="server">Duyuru ID</asp:Label>
                <asp:TextBox ID="TxtDuyuruId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <br />
             <div>
                <asp:Label for="TxtDuyuruBaslık" runat="server">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslık" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
                <br />
              <div>
                <asp:Label for="AreaDuyuruIcerik" runat="server">Duyuru İçerik</asp:Label>
                <textarea id="AreaDuyuruIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
           </div>
                <br />
           
      
        </div>

      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-info" Width="85px" OnClick="Button1_Click" />

     </form>
    
</asp:Content>
