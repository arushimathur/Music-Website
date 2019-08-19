<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VideoSongs.aspx.cs" Inherits="VideoSongs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" Visible="true" RepeatColumns="2" CellSpacing="5" runat="server">
        <ItemTemplate>
                <u>
            <%# Eval("Name") %></u>
                <hr />
            <a class="player" style="height: 300px; width: 300px; display: block" href='<%#Eval("Id", "FileCS.ashx?Id={0}") %>'>
            </a>
              </ItemTemplate>
        </asp:DataList>
    </div>
    <script src="FlowPlayer/flowplayer-3.2.12.min.js" type="text/javascript"></script>
    <script type="text/javascript">
flowplayer("a.player", "FlowPlayer/flowplayer-3.2.16.swf", {
plugins: {
pseudo: { url: "FlowPlayer/flowplayer.pseudostreaming-3.2.12.swf" }
},
clip: { provider: 'pseudo', autoPlay: false},
});
</script>
</asp:Content>

