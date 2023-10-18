<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thank-you.aspx.cs" Inherits="thank_you" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>

     <!--Google Font Resources-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&amp;display=swap" rel="stylesheet" />

    <link href="css/auro.css" rel="stylesheet" />
    <title>P-Sqaure Constructions Real Estate, land Development | Sangli</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
<!-- Header Starts -->
    <section id="header" class="backclr">
        <div class="container text-center posRelative">
            <div class="row ">
                <div class="col-md-4 text-left">
                    <span class="space5"></span>
                    <div class="clrWhite" id="rerano" style="">MahaRERA : P53100047676</div>
                    <a href="tel:+917875550055" class="topCall clrWhite">+91 7875 55 00 55</a>
                </div>
                <div class="col-md-4 mt-3 mb-3">
                    <a href="<%= rootPath %>" class="" title="Auro Luxury Homes">
                        <!-- <img src="images/aura-logo.png" alt="Auro HOMES" class="logo" />-->
                        <img src="images/logo-aura1.png" alt="Auro HOMES" class="logo" />
                    </a>
                </div>
                <div class="col-md-4">
                    <div class="socialBox">
                        <a href="https://www.facebook.com/psquareconstructionssangli" class="inline-block"><img src="images/icons/tfb.png" /></a>
                        <a href="https://www.instagram.com/p_square_constructions/" class="inline-block"><img src="images/icons/tInsta.png" /></a>
                        <a href="https://www.youtube.com/@p-squareconstructions6008" class="inline-block"><img src="images/icons/tYoutube.png" /></a>
                    </div>
                    <a href="mailto:contact@psquareconstructions.com" class="topMail clrWhite">contact@psquareconstructions.com</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Header Ends -->

    <section id="nav-bar">
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler pull-right" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <img src="images/icons/nav-btn.png" />
            </button>

            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=rootPath + "#banner"%>">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=rootPath + "#aboutcom"%>">About us</a>
                    </li>

                    <li class="nav-item active dropdown">
                        <a href="#" class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Project</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="<%=rootPath + "#project1"%>">2 BHK Luxurious Flats</a>
                            <a class="dropdown-item" href="<%=rootPath + "#project2"%>">3 BHK  Luxurious Flats</a>
                            <a class="dropdown-item" href="<%=rootPath + "#project3"%>">3 BHK &amp; 4 BHK Sky Villas</a>
                            <!--<a class="dropdown-item" href="#project4">4 BHK Sky Villas Duplex</a>-->
                            <a class="dropdown-item" href="<%=rootPath + "#project5"%>">Penthouses</a>
                            <a class="dropdown-item" href="<%=rootPath + "#project6"%>">Premium Bungalows</a>
                            <a class="dropdown-item" href="<%=rootPath + "#project7"%>">Commercial Shops</a>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=rootPath + "#ammenties_panel"%>">Amenities</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=rootPath + "#enquiry"%>">Enquiry</a>
                    </li>
                    <%--<li class="nav-item active">
                        <a class="nav-link" href="#testimonilas">Testimonials</a>
                    </li>--%>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </nav>
    </section>
    <!---Header End-->

            <%-- Thank you message --%>
            <section id="thank-you">
                <div class="container text-center">
                    <span class="space50"></span>
                    <h2 class="large semiBold themeClrPrime fontRegular">Thank you for your valuable enquiry.</h2>
                    <span class="space1"></span>
                        <span class="fontRegular themeClrPrime semiBold semiMedium">We will get back to you soon.</span> 
                    <span class="space50"></span>
                </div>
            </section>
            <%-- Thank you message End --%>


            <!-- Footer start -->
        <!--<span class="space40"></span>-->
        <div class="footer">
            <span class="space20"></span>
            <div class="col_1140 overflowHidden">
                <div class="col_1_4">
                    <div class="pad_15">
                        <h4 class="footerCaption clrWhite mrg_B_10 semiBold upperCase letter-sp-2">Navigation</h4>
                        <div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
                        <ul class="footerNav">
                            <li><a href="<%=rootPath + "#banner"%>">Home</a></li>
                            <li><a href="<%=rootPath + "#aboutcom"%>">About Us</a></li>
                            <li><a href="#">Project</a></li>
                            <li><a href="<%=rootPath + "#ammenties_panel"%>">Amenities</a></li>
                            <li><a href="<%=rootPath + "#enquiry"%>">Enquiry</a></li>
                            <%--<li><a href="#testimonilas">Testimonials</a></li>--%>
                        </ul>
                    </div>
                </div>
                <div class="col_1_4">   
                    <div class="pad_15">
                        <h4 class="footerCaption clrWhite mrg_B_10 semiBold upperCase letter-sp-2">We Are</h4>
                        <div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
                        <!--<h2 class="small clrWhite">At Sahyadri Hospital's branches</h2>-->
                        <p class="clrGrey">Welcome to P-Sqaure Constructions. We are Sangli's youngest, finest and one of the leading 1st generation real estate developers.</p>
                    </div>
                </div>
                <div class="col_1_4">
                    <div class="pad_15">
                        <h4 class="footerCaption clrWhite mrg_B_10 semiBold upperCase letter-sp-2">Get Social</h4>
                        <div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
                        <a href="https://www.facebook.com/psquareconstructionssangli" target="_blank" class="foo_fb foo_socialIco" title="Follow us on facebook"></a>
                        <a href="https://www.youtube.com/@p-squareconstructions6008" target="_blank" class="foo_youTube foo_socialIco" title="Follow us on youtube"></a>
                        <a href="https://www.instagram.com/p_square_constructions/" target="_blank" class="foo_insta foo_socialIco" title="Follow us on Instagram"></a>
                    </div>
                </div>
                <div class="col_1_4">
                    <div class="pad_15">
                        <h4 class="footerCaption clrWhite mrg_B_10 semiBold upperCase letter-sp-2">Contact Info</h4>
                        <div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
                        <span class="addr line-ht-5 small">Marvel Crysta, Shop 7-8, Dhamni Road, Vishrambag Sangli-416415</span>
                        <span class="space15"></span>
                        <a href="mailto:psquareconstructionssangli@gmail.com" class="email line-ht-5 small txtDecNone breakWord">psquareconstructionssangli&#64;gmail&#46;com</a>
                        <span class="space15"></span>
                        <a href="+917875550055" class="foo_call line-ht-5 small txtDecNone">+91-7875 55 00 55</a>
                    </div>
                </div>
                <div class="float_clear"></div>
            </div>
            <span class="space20"></span>
            <span class="footerLine"></span>
            <div class="col_1140 txtCenter">
                <div class="pad_15">
                    <span class="clrGrey mrg_B_5 small fontRegular">&copy; <%=currentYear %> | Aura Luxury Homes , All Rights Reserved</span>
                    <span class="clrGrey small fontRegular">Website By <a href="http://www.intellect-systems.com" target="_blank" class="intellect" title="Website Design and Development Service By Intellect Systems">Intellect Systems</a></span>
                </div>
            </div>
        </div>
        <!-- Footer Ends -->
        </div>
    </form>
</body>
</html>
