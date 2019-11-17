<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="UpLoadImage.aspx.cs" Inherits="StudentManagerPro.Students.UpLoadImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/AddStudent.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        //检查用户是否选择图片
        function CheckChooseImg() {
            var objFulImg = document.getElementById("<%=fulStuImage.ClientID%>");
            if (objFulImg.value == "") {
                alert("请选择照片！");
                return false;
            }
            return true;
        }
        //检查上传图片格式是否符合要求
        function CheckImg(ful) {
            var fulValue = ful.value;
            fulValue = fulValue.toUpperCase().substr(fulValue.lastIndexOf("."));
            if (fulValue!=".JPG") {
                alert("上传图片仅支持JPG格式！");
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="StuInfoTable">
        <caption>
            第二步：上传学员照片</caption>
        <tr>
            <td colspan="2">
                <asp:FileUpload ID="fulStuImage" onchange="CheckImg(this)" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnUpLoadImage" OnClientClick="return CheckChooseImg()"
                    runat="server"
                    Text="上传照片" OnClick="btnUpLoadImage_Click"  />
            </td>
        </tr>
    </table>
    <asp:Literal ID="ltaMsg" runat="server"></asp:Literal>
</asp:Content>
