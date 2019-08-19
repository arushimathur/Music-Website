<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" />
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
    </form>
</body>
</html>
