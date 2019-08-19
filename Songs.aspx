<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Songs.aspx.cs" Inherits="Songs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:600px; margin:auto; padding:5px 5px 5px 5px">
    <asp:FormView ID="FormView1" DataSourceID="SqlDataSource1" Width="100%" runat="server">
    <ItemTemplate>
     <center>
    <h1 style="color:Maroon"><%#Eval("movie_name")%></h1></center>
    <div style="color:Maroon;padding:10px 10px 10px 10px; width:400px; margin:auto; border:2px solid maroon;">
        <asp:Image ID="Image1" ImageUrl='<%#Eval("movie_image")%>' BorderColor="BurlyWood" BorderStyle="Solid" BorderWidth="3px" Width="220" Height="180" runat="server" />
        <hr />
        <%#Eval("movie_desc")%>
        </div>
    </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" ConnectionString="<%$ConnectionStrings:oms%>" SelectCommand="select * from movie where movie_id=@movie_id" runat="server">
    <SelectParameters>
    <asp:QueryStringParameter Name="movie_id" QueryStringField="movie_id" />
    </SelectParameters>
    </asp:SqlDataSource>
        <asp:GridView ID="GridView1" DataSourceID="SqlDataSource2" runat="server" 
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            Width="583px">
        <Columns>
        <asp:TemplateField HeaderText="Song Name">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" Text='<%#Eval("song_name")%>' NavigateUrl='<%#Eval("song_id","~/handler.ashx?song_id={0}")%>' runat="server"></asp:HyperLink>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Download">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" Text="Download" NavigateUrl='<%#Eval("song_id","~/handler3.ashx?song_id={0}")%>' runat="server"></asp:HyperLink>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" ConnectionString="<%$ConnectionStrings:oms%>" SelectCommand="select song_id,song_name from songs where movie_id=@movie_id" runat="server">
        <SelectParameters>
        <asp:QueryStringParameter Name="movie_id" QueryStringField="movie_id"/>
        </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

