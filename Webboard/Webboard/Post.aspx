<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="false" UnobtrusiveValidationMode="None" CodeBehind="Post.aspx.cs" Inherits="Webboard.Post" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <section class="form-horizontal" role="form">
            <h2 class="bg-success">ตั้งกระทู้ใหม่</h2>
            <div class="container">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="topic">หัวข้อ : </label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtTopic" runat="server" MaxLength="100"
                            class="form-control" placeholder="กรุณาตั้งชื่อกระทู้"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtTopic"
                            ErrorMessage="กรุณาตั้งชื่อกระทู้ด้วยครับ !!!"></asp:RequiredFieldValidator> 
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="ask">คำถาม :</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"
                            MaxLength="255" TabIndex="0"
                            class="form-control" placeholder="กรุณาป้อนคำถาม" Rows="5"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txtDescription"
                            ErrorMessage="กรุณาระบุรายละเอียดของคำถามด้วยครับ"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="user">ตั้งกระทู้ :</label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="txtUserName" runat="server" TabIndex="1"
                            class="form-control" placeholder="กรุณาระบุชื่อ"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="txtUserName"
                            ErrorMessage="กรุณาระบุชื่อด้วยครับ"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="cmdSave" runat="server" Text="บันทึก"
                            TabIndex="2" CssClass="btn btn-success" OnClick="cmdSave_Click" />
                        <asp:Button ID="cmdClear" runat="server" Text="ล้างข้อมูล"
                            TabIndex="3" CssClass="btn btn-danger" OnClick="cmdClear_Click" />
                    </div>
                </div>
            </div>
        </section>
    </asp:Content>