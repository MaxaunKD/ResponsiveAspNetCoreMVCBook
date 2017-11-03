<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="Reply.aspx.cs" Inherits="Webboard.Reply" %>
                                                                                <%--ต้องมี UnobtrusiveValidationMode="None"--%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <asp:DataList ID="dlTopic" runat="server">
            <ItemTemplate>
                <div class="container" style="margin:10px;border: thin solid #009933;">
                    <div class="page-header">
                        <h1 style="color: #009933">
                            <asp:Label ID="TopicLabel" runat="server"
                                Text='<%# Eval("Topic") %>' />
                        </h1>
                    </div>
                    <div>
                        <asp:Label ID="DescriptionLabel" runat="server"
                            Text='<%# Eval("Description") %>' />
                    </div>
                    <div class="bg-success">
                        ตั้งกระทู้ :
                        <asp:Label ID="UserNameLabel" runat="server"
                            Text='<%# Eval("UserName") %>' />
                        | วันที่ตั้งกระทู้ :
                        <asp:Label ID="RecordDateLabel" runat="server"
                            Text='<%# Eval("RecordDate") %>' />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </section>
    <hr />
    <section>
        <asp:DataList ID="dlReply" runat="server">
            <ItemTemplate>
                <div class="container" style="margin:10px;border: thin solid #0066FF;">
                    <div class="page-header">
                        <div class="bade">คำตอบที่ :
                            <asp:Label ID="ReplyNOLabel" runat="server"
                                Text='<%# Eval("ReplyNO") %>' />
                        </div>
                    </div>
                    <div>
                        <asp:Label ID="DescriptionLabel" runat="server"
                            Text='<%# Eval("Description") %>' />
                    </div>
                    <div class="bg-primary">
                        <b>จากคุณ :</b>
                        <asp:Label ID="ReplyNameLabel" runat="server"
                            Text='<%# Eval("ReplyName") %>' /> 

                        <b>วันที่ตอบ :</b>
                        <asp:Label ID="ReplyDateLabel" runat="server"
                            Text='<%# Eval("ReplyDate") %>' />

                        <b>IP :</b>
                        <asp:Label ID="IPLabel" runat="server"
                            Text='<%# Eval("IP") %>' />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </section>
    <br />
    <br />
    <br />
    
    <section>
        <h2 class="bg-primary">ตอบกระทู้</h2>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="answer">ตอบกระทู้ :</label>
                <asp:TextBox ID="txtDescription" runat="server"
                    TextMode="MultiLine" MaxLength="255"
                    TabIndex="0" Rows="5"
                    class="form-control" placeholder="กรุณาตอบกระทู้">
                </asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="กรุณาระบุรายละเอียดของคำตอบด้วยครับ"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-5">
                <label for="user">จากคุณ :</label>
                <asp:TextBox ID="txtReplyName" runat="server" TabIndex="1"
                    class="form-control" placeholder="กรุณาระบุชื่อผู้ตอบ"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtReplyName" ErrorMessage="กรุณาระบุชื่อด้วยครับ">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-12">
                <asp:Button ID="cmdSave" runat="server" Text="บันทึก" TabIndex="2" class="btn btn-success" OnClick="cmdSave_Click" />
                <asp:Button ID="cmdClear" runat="server" Text="ล้างข้อมูล" TabIndex="3" class="btn btn-danger" OnClick="cmdClear_Click" />
            </div>
        </div>  
    </section>
</asp:Content>
