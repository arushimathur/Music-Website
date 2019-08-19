<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="width:600px; margin:auto; padding:5px 5px 5px 5px">
    <asp:DataList ID="DataList1" Width="400px" runat="server" CellPadding="10" 
          CellSpacing="5" Font-Names="Verdana" Font-Size="Small" 
          DataSourceID="SqlDataSource1">
        <ItemStyle BorderColor="Black" BorderStyle="Dotted" BorderWidth="2px" />
    <ItemTemplate>
     <div style="float:left; padding-right:auto">
         <asp:Image ID="Image1" ImageUrl='<%#Eval("song_image")%>' Height="120" Width="100" runat="server" />
    </div>
    <div style="float:right;">
      Song Name:<br /><b><%#Eval("song_name")%></b><br /><br />Artists:<br /><b><%#Eval("song_artist")%></b><br /><br /><br /><b><asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("song_id","~/handler.ashx?song_id={0}")%>' runat="server">Play</asp:HyperLink></b>
      <b><asp:HyperLink ID="HyperLink2" Text="Download" NavigateUrl='<%#Eval("song_id","~/handler3.ashx?song_id={0}")%>' runat="server"></asp:HyperLink></b>
      </div>
    </ItemTemplate>   
    </asp:DataList>
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" ConnectionString="<%$ConnectionStrings:OMS%>" SelectCommand="select * from songs" FilterExpression="song_name like'%{0}%'" runat="server">
    <FilterParameters>
    <asp:QueryStringParameter QueryStringField="song_name" Name="song_name" Type="String"/>
    </FilterParameters>
    </asp:SqlDataSource>
</asp:Content>

