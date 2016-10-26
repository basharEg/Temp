<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="Login.aspx.cs" Inherits="Temp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="Content/font-awesome.min.css"/>
    <link rel="stylesheet" href="Content/LoginDesig.css"/>
         <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script> 
</head>
<body>
    <form id="form1" class="LoginForm" runat="server">          
          <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4 Border">
                <i class="fa fa-user-secret FrmHeader" aria-hidden="true" ></i> 
                
                <br/>
                <h3>Login Form:</h3>
                <br/>
                <div class="form-group">   
                        
                    <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"   placeholder="User" ></asp:TextBox>     
                   <%-- <asp:RequiredFieldValidator runat="server"  ControlToValidate="txtUser" ErrorMessage="User ID Required"></asp:RequiredFieldValidator>                --%>
                </div>
                <div class="form-group">
                <asp:TextBox  ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"   placeholder="Password"></asp:TextBox>                 
                 
                </div>
                <div class="form-group">
                    <asp:Button  ID="btnLogin" runat="server" OnClick="btnx_OnClick" Text="Login" CssClass="form-control btn-primary"/>
                    <br/>
                    <asp:Label runat="server" id="lblMessage" CssClass="text-danger" ></asp:Label>
                </div>    
                
                <div>        
                               
                    <asp:LinkButton runat="server" OnClick="label_OnClick" class="btn center-block">
                        <i class="fa fa-sign-in" aria-hidden="true" ></i> Sign Up
                    </asp:LinkButton>                
                </div>
                          

            </div>
            <div class="col-md-4">
            </div>
        </div>
    </form>
    <script type="text/javascript">
        //document.getElementById("txtUser").onblur = function () { validateNotEmpty(this) };
        //document.getElementById("txtPassword").onblur = function () { validateNotEmpty(this) };
        document.getElementById("btnLogin").onclick = function () { return validate() };

        function validateNotEmpty(s) {
            if (s.value === "") {
                alert("Insert " + s.placeholder);
            }
        }

        function validate() {
            "<i class='fa fa-info' aria-hidden='true'></i>"

            if ((document.getElementById("txtPassword").value =="") ||
                (document.getElementById("txtUser").value == "")) {
                document.getElementById("lblMessage").innerHTML = "<i class='fa fa-ban' aria-hidden='true'></i>" + " Insert user ID and password";
                return false;
            }
            return true;
        }
    </script>

</body>
    
</html>
