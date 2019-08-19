<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding:10px 10px 10px 10px;">
     <div>
         <asp:DataList ID="DataList1" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" runat="server">
         <ItemTemplate>
             <asp:ImageButton ID="ImageButton1" BorderColor="Brown" BorderStyle="Solid" BorderWidth="2px" style="padding:3px 3px 3px 3px; margin-right:4px; margin-bottom:4px" Width="220" Height="280" ImageUrl='<%#Eval("movie_image")%>' PostBackUrl='<%#Eval("movie_id","Songs.aspx?movie_id={0}")%>' runat="server" />
         </ItemTemplate>
         <AlternatingItemTemplate>
         <asp:ImageButton ID="ImageButton1" BorderColor="BurlyWood" BorderStyle="Solid" BorderWidth="2px" style="padding:3px 3px 3px 3px; margin-right:4px; margin-bottom:4px" Width="220" Height="280" ImageUrl='<%#Eval("movie_image")%>' PostBackUrl='<%#Eval("movie_id","Songs.aspx?movie_id={0}")%>' runat="server" />
         </AlternatingItemTemplate>
         </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource1" ConnectionString="<%$ConnectionStrings:oms%>" SelectCommand="select top 6* from movie" runat="server"></asp:SqlDataSource>
     </div>  
   </div>
</asp:Content>

