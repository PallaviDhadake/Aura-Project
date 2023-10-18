<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sender-details.aspx.cs" Inherits="sender_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&amp;display=swap" rel="stylesheet" />
    <link href="css/auro.css" rel="stylesheet" />
    <script src="js/jquery-2.2.4.min.js"></script>

     <style type="text/css">
        .body{width:500px; overflow-x:hidden;}

         @media screen and (max-width: 414px) {
             .body {
                width:100%
             }
             .w100{width:100%;}
         }
         @media screen and (max-width: 320px) {
                 .w100{width:100%;}
             }

         .buttonForm{background-color:#0167b1; color:#fff; font-size:1em; padding:10px 18px; cursor:pointer; -webkit-transition:all 0.7s ease; transition:all 0.7s ease;}
.buttonForm:hover{background:rgba(0,0,0,0.7);}

.buttonResend{background-color:#d77211; color:#fff; font-size:1em; padding:10px 18px; cursor:pointer; -webkit-transition:all 0.7s ease; transition:all 0.7s ease;}
.buttonResend:hover{background:rgb(75 67 67 / 0.70);}

.buttonCancel{background-color:#4d4a48; color:#fff; font-size:1em; padding:10px 18px; cursor:pointer; -webkit-transition:all 0.7s ease; transition:all 0.7s ease;}
.buttonCancel:hover{background:rgb(129 120 120 / 0.70);}

    </style>

     <%-- Tost Notification --%>
    <link href="css/toastr.css" rel="stylesheet" />
    <script src="js/toastr.js"></script>
    

    <script type="text/javascript">
        function TostTrigger(EventName, MsgText) {
            // code to be executed
            Command: toastr[EventName](MsgText)
            toastr.options = {
                "closeButton": true,
                "debug": false,
                "newestOnTop": false,
                "progressBar": false,
                "positionClass": "toast-top-full-width",
                "preventDuplicates": false,
                "onclick": null,
                "showDuration": "300",
                "hideDuration": "1000",
                "timeOut": "5000",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "slideDown",
                "hideMethod": "fadeOut"
            }

        }
    </script>

</head>
<body class="body" id="hideiframe" runat="server">
    
    <form id="form1" runat="server">
        <div><asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager></div>
        <div class="">
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <div id="proceedData" runat="server" visible="false">
                <div>
                    <div class="p-5">
                        <div class="w100 mrg_B_15">
                        <span class="labelCap">Enter Name :*</span>
                        <asp:TextBox ID="txtName" CssClass="textBox w95" MaxLength="50" placeholder="Full Name" runat="server"></asp:TextBox>
                    </div>

                    <div class="w100 mrg_B_15">
                        <span class="labelCap">Mobile No :*</span>
                        <asp:TextBox ID="txtMobile" CssClass="textBox w95" MaxLength="10" placeholder="Without Country Code" runat="server"></asp:TextBox>
                    </div>
                    <span class="space15"></span>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="buttonForm" Text="SEND" OnClick="btnSubmit_Click" />
                    </div>
                    <%= proceedMsg %>
                </div>
                <div class="float_clear"></div>
            </div>

            <!-- Verify OTP Starts -->
                <div id="otpVerify" runat="server" visible="false">
                    <div class="p-4">
                        <span class="space15"></span>
                        <span class="small fontRegular clrBlack">Verification Code is sent to your Mobile Number,
                    <br />
                            Enter the verification code in below textbox</span>
                        <span class="space10"></span>

                        <div class="w100 mrg_B_15">
                            <span class="labelCap clrBlack">Verification Code :*</span>
                            <asp:TextBox ID="txtVerify" CssClass="textBox" MaxLength="4" placeholder="Enter Verification Code" runat="server"></asp:TextBox>
                        </div>
                        <span class="space10"></span>
                        <%= verifyMsg %>
                      
                        <asp:Button ID="btnVerify" runat="server" Text="Verify" CssClass="buttonForm float_left mrg_R_15" OnClick="btnVerify_Click" />
                        <asp:Button ID="btnResend" runat="server" Text="Resend" CssClass="buttonResend float_left mrg_R_15" OnClick="btnResend_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="buttonCancel float_left" OnClick="btnCancel_Click" />
                        <div class="float_clear"></div>
                        <span class="space15"></span>
                    </div>
                </div>
            <!-- Verify OTP Ends -->

            <%-- success msg --%>
            <div id="success" class="txtCenter" runat="server" visible="false">
                <span class="space20"></span>
                <span class="semiBold semiMedium colorgreen">Thank you for the verification.</span><br />
                <span class="fontRegular regular colorgreen">We will get back to you soon.!</span>
                 <span class="space10"></span>
                <a href="download/<%=brochure %>" target="_blank" class="btn btn-primary">Download Brochure</a>
                <span class="space20"></span>
            </div>
            <%-- success msg --%>
            </ContentTemplate>
            </asp:UpdatePanel>  

        </div>
    </form>

   <%-- <script>
        function timeFunction() {
            setTimeout(function () { return; }, 1000);
        }
</script>--%>

   <%-- <script>
        function timeFunction() {
            setTimeout(function () { parent.location = 'Default.aspx'; parent.$.fancybox.close(); }, 3000);
        }


        function closePopupForm() {
            parent.location = 'Default.aspx'; parent.$.fancybox.close();
        }
</script>--%>

 <script type="text/JavaScript" language="JavaScript">
     function CloseMe() {
         parent.removeMyIFrame()
     }
 </script>



</body>
</html>
