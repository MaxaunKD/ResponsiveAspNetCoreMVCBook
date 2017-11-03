<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Webboard.Default1" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        ค้นหา :
        <asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox>
        <asp:Button ID="cmdSearch" runat="server" Text="ค้นหา" class="btn btn-info" OnClick="cmdSearch_Click" /><br /><br />

        <asp:GridView ID="gvTopic" runat="server"
            AllowPaging="True"
            AutoGenerateColumns="False"
            class="table table-bordered table-striped table-hover" OnPageIndexChanging="gvTopic_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="TID" HeaderText="ลำดับ"
                    ReadOnly="True" SortExpression="TID" />
                <asp:TemplateField HeaderText="ชื่อกระทู้" SortExpression="Topic">
                    <ItemTemplate>
                        <a href="Reply.aspx?TID=<%# Eval("TID") %>">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Topic") %>' />
                        </a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="UserName" HeaderText="ผู้ตั้งกระทู้"
                    ReadOnly="True" SortExpression="UserName"
                    HeaderStyle-CssClass ="hidden-xs hidden-sm"
                    ItemStyle-CssClass="hidden-xs hidden-sm" />
                <asp:BoundField DataField="RecordDate" HeaderText="วันที่ตั้งกระทู้"
                    ReadOnly="True" SortExpression="RecordDate"
                    HeaderStyle-CssClass ="hidden-xs hidden-sm"
                    ItemStyle-CssClass="hidden-xs hidden-sm" />
                <asp:BoundField DataField="ViewCount" HeaderText="จำนวนอ่าน"
                    ReadOnly="True" SortExpression="ViewCount"
                    HeaderStyle-CssClass ="hidden-xs hidden-sm"
                    ItemStyle-CssClass="hidden-xs hidden-sm" />
                <asp:BoundField DataField="ReplyCount" HeaderText="จำนวนตอบ"
                    ReadOnly="True" SortExpression="ReplyCount"
                    HeaderStyle-CssClass ="hidden-xs hidden-md"
                    ItemStyle-CssClass="hidden-xs hidden-md" />
                <asp:BoundField DataField="IP" HeaderText="หมายเลข IP"
                    ReadOnly="true" SortExpression="IP"
                    HeaderStyle-CssClass ="hidden-xs hidden-md"
                    ItemStyle-CssClass ="hidden-xs hidden-md" />
            </Columns>
        </asp:GridView>
    </section>
</asp:Content>
