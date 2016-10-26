<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Temp.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/font-awesome.min.css" />
    <link rel="stylesheet" href="Content/RegistrationDesign.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <form role="form" runat="server">
                    <h3 class="text-left  text-danger" >
                        <i class="fa fa-hand-o-down" aria-hidden="true"></i>
                        Sign Up
                    </h3>
                    <br />
                    <br />
                    <div class="form-group">
                        <asp:Label runat="server" Text="Student ID" CssClass=""></asp:Label>
                        <asp:TextBox ID="StuId" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="First Name"></asp:Label>
                        <asp:TextBox ID="StuFname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="StuLname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Email Address"></asp:Label>
                        <asp:TextBox ID="StuEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="StuPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Title"></asp:Label>
                        <asp:TextBox ID="StuTitle" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-info" OnClick="submit_OnClick" />
                    <br />
                    <br />
                    <br />
                    <asp:Label runat="server" ID="lblMessage" CssClass="text-danger"></asp:Label>

                </form>
            </div>
            <div class="col-md-4">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
            </div>
        </div>
    </div>
    <script type="text/javascript">
        document.getElementById("btnSubmit").onclick = function () { return validate() };


        function validate() {
            "<i class='fa fa-info' aria-hidden='true'></i>"

            if ((document.getElementById("StuId").value === "") ||
                (document.getElementById("StuFname").value === "") ||
                (document.getElementById("StuPass").value === "")) {
                document.getElementById("lblMessage").innerHTML = "<i class='fa fa-ban' aria-hidden='true'></i>" + " Insert user ID,first name and password";
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
