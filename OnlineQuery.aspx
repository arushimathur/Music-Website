<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OnlineQuery.aspx.cs" Inherits="OnlineQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%; padding:10px 10px 10px 10px">
<div style="width:100%; background-color: #FF9900; padding:10px 10px 10px 10px">
<center><h1 style="color: #CC3300;">ONLINE QUERY SUBMISSION</h1></center>
<div style="width:100%; background-color: #993300;">
<table width="100%">
<tr style="width:100%">
<td class="style1">
<div style="float:right">

    <asp:Label ID="Label1" runat="server" ForeColor="#FF9900" Font-Names="tahoma" Font-Size="Medium" Text="User Name"></asp:Label>
    </div>
</td>
<td style="width:50%">
    <asp:TextBox ID="TextBox1" Font-Names="tahoma" Font-Size="12px" runat="server" 
        Width="298px"></asp:TextBox>
</td>
</tr>
<tr style="width:100%">
<td class="style1">
<div style="float:right">
    <asp:Label ID="Label2" runat="server" ForeColor="#FF9900" Font-Names="tahoma" Font-Size="Medium" Text="E-Mail ID"></asp:Label>
    </div>
</td>
<td style="width:50%">
    <asp:TextBox ID="TextBox2" Font-Names="tahoma" Font-Size="12px" runat="server" 
        Width="298px"></asp:TextBox>
</td>
</tr>
<tr style="width:100%">
<td class="style1">
<div style="float:right">
    <asp:Label ID="Label3" runat="server" ForeColor="#FF9900" Font-Names="tahoma" Font-Size="Medium" Text="Phone"></asp:Label>
    </div>
</td>
<td style="width:50%">
    <asp:TextBox ID="TextBox3" Font-Names="tahoma" Font-Size="12px" runat="server" 
        Width="298px"></asp:TextBox>
</td>
</tr>
<tr style="width:100%">
<td class="style1">
<div style="float:right">
    <asp:Label ID="Label4" runat="server" ForeColor="#FF9900" Font-Names="tahoma" Font-Size="Medium" Text="Query"></asp:Label>
    </div>
</td>
<td style="width:50%">
    <asp:TextBox ID="TextBox4" Font-Names="tahoma" Font-Size="12px" runat="server" 
        Width="298px" Height="94px" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
</table>
<table width="100%">
<tr style="width:100%">
<td style="width:100%">
<center>
    <asp:Button ID="Button1" Font-Names="tahoma" Font-Size="Small" 
        ForeColor="#993300" runat="server" Text="Submit Query" 
        onclick="Button1_Click" />
    <asp:Button ID="Button2" Font-Names="tahoma" Font-Size="Small" ForeColor="#993300" runat="server" Text="Cancel" />
    <asp:Label ID="Label5" Font-Names="tahoma" Font-Size="Small" runat="server" Text=""></asp:Label>
</center>
</td>
</tr>
</table>
</div>
</div>
</div>
</asp:Content>

