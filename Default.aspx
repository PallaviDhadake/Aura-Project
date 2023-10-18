﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>

    <link rel=" stylesheet" href="plugins/fontawesome/css/all.min.css"/>

    <link href="css/auro.css" rel="stylesheet" />
    <link href="http://fonts.cdnfonts.com/css/blanka" rel="stylesheet"/>
    <title>P-Sqaure Constructions Real Estate, land Development | Sangli</title>
    
    <!--Google Font Resources-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&amp;display=swap" rel="stylesheet" />

    <script src="js/jquery-2.2.4.min.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>


    <link href="css/jquery.fancybox.css" rel="stylesheet" />
    <script src="js/jquery.fancybox.js"></script>
    <link href="css/toastr.css" rel="stylesheet" />
    <script src="js/toastr.js"></script>
    <script src="js/jquery.backstretch.js"></script>
    <link href="css/rating-stars.css" rel="stylesheet" />

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

    <script>
        $(document).ready(function () {
            //$("#myModal").modal('show');
            //$("#myModal").modal({ backdrop: "static ", keyboard: false });
        });
    </script>

     <script type="text/javascript">
         var onloadCallback = function () {
             grecaptcha.render('recaptcha', {
                 'sitekey': '6LcNBIUUAAAAADbX-_n6UhdJhtAxQDgiypcyZqSN'
             });
         };
     </script>


    <style type="text/css">

        .video-container {
            width: 100%;
            height: 70vh;
        }

        .video-container iframe {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 100%;
            height: 100%;
            transform: translate(-50%, -50%);
            pointer-events: none;
        }
    </style>

</head>
<body>
    <!-- modal popup strat -->
    <a data-controls-modal="myModal" data-backdrop="static" data-keyboard="false" href="#"></a>
    <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Aura Luxury Homes</h5>
                    <!--<button type="button" class="close" data-dismiss="modal">&times;</button>-->
                </div>
                <div class="modal-body">
                    <!--<p>Connect with aura luxury homes projected by square constructions</p>-->
                    <form class="needs-validation" novalidate>

                        <div class="form-group">
                            <label for="inputEmail4">Your Name</label>
                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Name">
                            <div class="invalid-feedback">
                                You must agree before submitting.
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail4">Phone Number</label>
                            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="######" maxlength="10">
                            <div class="invalid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail4">Email</label>
                            <input type="email" class="form-control" id="formGroupExampleInput" placeholder="demo@gmail.com">
                            <div class="invalid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <!--<label for="inputPassword4"></label>-->
                                <input type="text" class="form-control" id="inputEmail4" placeholder="City">
                                <div class="invalid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <!--<label for="inputEmail4">Region</label>-->
                                <input type="text" class="form-control" id="inputCity" placeholder="Postal / Zip Code">
                                <div class="invalid-feedback">
                                    Looks good!
                                </div>
                            </div>
                        </div>
                        <!--<label for="inputEmail4">What kind of property are you interested in ?</label>-->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputState">Interested in ?</label>
                                <select id="inputState" class="form-control">
                                    <!--<option>Choose</option>-->
                                    <option>2 BHK</option>
                                    <option>3 BHK</option>
                                    <option>Duplex Flats</option>
                                    <option>Bungalows</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputState">Budget</label>
                                <select id="inputState" class="form-control">
                                    <!--<option>Choose</option>-->
                                    <option>30-40 Lakhs</option>
                                    <option>40-55  Lakhs</option>
                                    <option>60-80  Lakhs</option>
                                    <option>80  Lakhs Above</option>
                                </select>
                            </div>
                        </div>
                        <span class="space10"></span>
                        <!--<div class="form-row">
                            <div class="form-group">
                                <label for="validationCustom01">First name</label>
                                <input type="text" class="form-control" id="validationCustom01" placeholder="First name" value="Mark" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail4">Name</label>
                                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="First name">
                            </div>
                            <div class="form-group">
                                <label for="inputEmail4">Name</label>
                                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="First name">
                            </div>
                            <div class="form-group">
                                <label for="validationCustom02">Last name</label>
                                <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="Otto" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustomUsername">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                                    </div>
                                    <input type="text" class="form-control" id="validationCustomUsername" placeholder="Username" aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <!--<div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="validationCustom03">City</label>
                                <input type="text" class="form-control" id="validationCustom03" placeholder="City" required>
                                <div class="invalid-feedback">
                                    Please provide a valid city.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationCustom04">State</label>
                                <input type="text" class="form-control" id="validationCustom04" placeholder="State" required>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationCustom05">Zip</label>
                                <input type="text" class="form-control" id="validationCustom05" placeholder="Zip" required>
                                <div class="invalid-feedback">
                                    Please provide a valid zip.
                                </div>
                            </div>
                        </div>-->
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                <label class="form-check-label" for="invalidCheck">
                                    Agree to terms and conditions
                                </label>
                                <div class="invalid-feedback">
                                    You must agree before submitting.
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-primary" type="submit">Submit form</button>
                    </form>

                    <script>
                        // Example starter JavaScript for disabling form submissions if there are invalid fields
                        (function () {
                            'use strict';
                            window.addEventListener('load', function () {
                                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                var forms = document.getElementsByClassName('needs-validation');
                                // Loop over them and prevent submission
                                var validation = Array.prototype.filter.call(forms, function (form) {
                                    form.addEventListener('submit', function (event) {
                                        if (form.checkValidity() === false) {
                                            event.preventDefault();
                                            event.stopPropagation();
                                        }
                                        $('#myModal').modal({
                                            backdrop: 'static',
                                            keyboard: false
                                        })
                                        form.classList.add('was-validated');
                                    }, false);
                                });
                            }, false);
                        })();
                    </script>
                </div>
            </div>
        </div>
    </div>
    <!-- modal popup end -->
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
                        <a href=" https://www.instagram.com/p_square_constructions/" class="inline-block"><img src="images/icons/tInsta.png" /></a>
                        <a href=" https://www.youtube.com/@p-squareconstructions6008" class="inline-block"><img src="images/icons/tYoutube.png" /></a>
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
                        <a class="nav-link" href="#banner">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#aboutcom">About us</a>
                    </li>

                    <li class="nav-item active dropdown">
                        <a href="#project" class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Project</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#project1">2 BHK Luxurious Flats</a>
                            <a class="dropdown-item" href="#project2">3 BHK  Luxurious Flats</a>
                            <a class="dropdown-item" href="#project3">3 BHK &amp; 4 BHK Sky Villas</a>
                            <!--<a class="dropdown-item" href="#project4">4 BHK Sky Villas Duplex</a>-->
                            <a class="dropdown-item" href="#project5">Penthouses</a>
                            <a class="dropdown-item" href="#project6">Premium Bungalows</a>
                            <a class="dropdown-item" href="#project7">Commercial Shops</a>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#ammenties_panel">Amenities</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#enquiry">Enquiry</a>
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
    <!-- banner start-->
    <section id="banner">
        <div class="">
            <div class="">
                <div class="">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="images/banner/banner-1.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="images/banner/banner-2.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="images/banner/banner-3.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="images/banner/banner-4.jpg" alt="Fourth slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner end  -->
    <span class="space40"></span>
    <section id="aboutcom">
        <h3 class="themeClrSec semiBold text-center upperCase mrg_B_10">welcome to AURA LUXURY HOMES</h3>
        <!--<h3 class="themeClrSec semiBold text-center upperCase mrg_B_10">welcome<span class="mrg_L_15"></span>t o<span class="mrg_L_15"></span>s q u a r e<span class="mrg_L_15"></span>c o n s t r u c t i o n s</h3>-->
        <div class="">
            <!--<span class="space50"></span>-->
            <div class="">
                <div class="container text-center">
                    <!--<img src="images/logo-company.png" />-->
                    <span class="space15"></span>
                    <p class="clrDarkGrey line-ht-5">
                        Aura Luxury Homes is undoubtedly Sangli's most premium project with meticulous planning, attention to minute details, focus on quality and great craftmanship. Aura is designed to bring every comfort and convience to you. We belive home is more than just four walls. It should entail a well planned ecosystem that nurtures your mind, body and soul.
                    </p>
                </div>
            </div>
            <!--<span class="space50"></span>-->
        </div>
    </section>
    <!-- About square constructions end -->
    <!-- About Aura start -->
    <span class="space20"></span>
    <section id="about">
        <div class="container">
            <h3 class="clrGrey text-center upperCase mrg_B_5">About us</h3>
            <h2 class="semiBold text-center">A Higher Quality of Living Experience the AURA Lifestyle</h2>
            <span class="space15"></span>
            <div class="row">
                <div class="col-md-6">
                    <div class="text-center">
                        <img src="images/icons/lifestyle.png" />
                        <span class="space20"></span>
                        <h3 class="upperCase">lifestyle EXPERIENCE</h3>
                    </div>
                    <span class="space15"></span>
                    <p class="clrDarkGrey tiny fontRegular line-ht-5 text-center">
                        A luxury home is exclusive, stylish and unique. We at Aura Luxury Homes strive to offer you luxury in every sphere of your life. Our project is meant to offer the best and raise living to the highest possible standards. For this purpose, we present Aura Luxury, where every aspect is designed to give you a taste of luxury living.
                    </p>
                </div>
                <span class="space50"></span>
                <div class="col-md-6">
                    <div class="text-center">
                        <img src="images/icons/qualityofliving.png" />
                        <span class="space20"></span>
                        <h3 class="upperCase">quality of LIVING</h3>
                    </div>
                    <span class="space15"></span>
                    <p class="clrDarkGrey tiny fontRegular line-ht-5 text-center">
                        We invites you to marvel at the intricate aesthetics. The well-thought specifications here glorify the perfection, ensuring that only the best has gone into crafting each corner of your abode. By enabling modern technology for your personal needs, it gives you a lavish feeling every time you step into your house.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <span class="space30"></span>
    <!-- About Aura end -->
    <!-- Video Ends -->

    <section id="VideoSection" class="text-center">
        <div class="video-container">
            <iframe src="https://www.youtube.com/embed/62l3ULDbP5k?controls=0&autoplay=1&mute=1&playsinline=1&loop=1&playlist=62l3ULDbP5k"></iframe>
        </div>
        <span class="space15"></span>
        <a href="https://www.youtube.com/watch?v=3TnbrABliwM" target="_blank" class="btn btn-primary text-center">See Full Video</a>
    </section>
    <span class="space40"></span>
    <!--<span class="space50"></span>-->
    <!-- Product video end -->

    <!-- Project Collaps list starts -->
   
    <div class="container">
         <div class="semiBold large themeClrSec mrg_B_10 text-center">Floor Plans</div>
        <span class="space10"></span>
        <div class="row">
            <div class="col-md-6">
                <a id="project1" class="large themeClrSec semiBold mrg_B_10" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">2 BHK Luxurious Flats</a>

        <!--2 BHK Luxurious Flats -->
        <div class="collapse multi-collapse" id="multiCollapseExample1">
            <div class="row">
                <p class="clrDarkGrey small fontRegular line-ht-5" style="padding-left:15px">
                    Our 2/3 BHK flats are designed with MLA concept ie. Maximum living area, zero wastage homes that give u maximum space and maximum joy. Huge living areas, large decks, and a walking wardrobe in master beds make our project unique and luxurious above all.
                </p>
                <div class="col-sm-6">
                    <img src="images/2-BHK-Luxurious-Flats.jpg" class="width100" />
                </div>
                <!--<div class="col-sm-6">
                    <iframe width="100%" height="350" src="https://www.youtube.com/embed/KC-yA7Kwb2Q"></iframe>
                </div>-->
            </div>
            <span class="space15"></span>
            <!--<a href="#myModal" target="_blank" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>-->
            <a href="sender-details.aspx?plan=2-BHK-Luxurious-Flats" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>
             <!--<button data-toggle="modal" data-target="#myModal" class="floorPlanLink">Send Enquiry for More Details</button>-->
        </div>
            
            <span class="space20"></span>

            <a id="project2" class="large themeClrSec semiBold mrg_B_10" data-toggle="collapse" href="#multiCollapseExample2" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">3 BHK Luxurious Flats</a>

            <!--3 BHK Luxurious Flats -->
            <div class="collapse multi-collapse" id="multiCollapseExample2">
                <div class="row ">
                    <p class="clrDarkGrey small fontRegular line-ht-5" style="padding-left:15px">
                        Our 2/3 BHK flats are designed with MLA concept ie. Maximum living area, zero wastage homes that give u maximum space and maximum joy. Huge living areas, large decks, and a walking wardrobe in master beds make our project unique and luxurious above all.
                    </p>
                    <div class="col-sm-6">
                        <img src="images/3-BHK-Luxurious-Flats.jpg" class="width100" />
                    </div>
                    <!--<div class="col-sm-6">
                        <iframe width="100%" height="350" src="https://www.youtube.com/embed/DYz8410NIqM"></iframe>
                    </div>-->
                    <!--<a href="download/3-BHK.pdf" target="_blank" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>-->
                </div>
                <span class="space15"></span>
                <a href="sender-details.aspx?plan=3-BHK-Luxurious-Flats" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>
            </div>
            <span class="space20"></span>


            <a id="project3" class="large themeClrSec semiBold mrg_B_10" data-toggle="collapse" href="#multiCollapseExample3" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">3 BHK &amp; 4 BHK Sky Villas</a>
            <!--3 BHK Sky Villas Duplex -->
            <div class="collapse multi-collapse" id="multiCollapseExample3">
                <div class="row ">
                    <p class="clrDarkGrey small fontRegular line-ht-5" style="padding-left:15px">
                        Aura luxury homes bring to you Pune's Most trending and fast-selling duplex concept flats now in our project. Double-height living area, large terraces all that you wish to have in your own bungalow we have got it for you.
                    </p>
                    <div class="col-sm-6">
                        <img src="images/3-BHK-Sky-Villas-Duplex.jpg" class="width100" />
                        <span class="space15"></span>
                       <%-- <span class="space10"></span>--%>
                <a href="sender-details.aspx?plan=3-BHK-Sky-Villas" class="floorPlanLink" title="See Floor Plan here">3 BHK Sky Villas</a>
                    </div>
                    <div class="col-sm-6">
                        <img src="images/3-BHK-Duplex-floor.jpg" class="width100" />
                        <span class="space15"></span>
                <a href="sender-details.aspx?plan=4-BHK-Sky-Villas" class="floorPlanLink" title="See Floor Plan here">4 BHK Sky Villas</a>
                    </div>
                    <!--<div class="col-sm-6">
                        <iframe width="100%" height="350" src="https://www.youtube.com/embed/9wZJccZDU4g"></iframe>
                    </div>-->
                    <!--<a href="download/3-BHK-ALTERNATIVE-PLAN.pdf" target="_blank" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>-->
                </div>
                
            </div>
            <span class="space20"></span>

            </div>
            <div class="col-md-6">
                <!--<a id="project4" class="large themeClrSec semiBold mrg_B_10" data-toggle="collapse" href="#multiCollapseExample4" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">4 BHK Sky Villas Duplex</a>-->
            <!--4 BHK Sky Villas Duplex -->
            <!--<div class="collapse multi-collapse" id="multiCollapseExample4">
                <div class="row ">
                    <p class="clrDarkGrey small fontRegular line-ht-5" style="padding-left:15px">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua.
                    </p>
                    <div class="col-sm-6">
                        <img src="images/4-BHK-Sky-Villas-Duplex.jpg" class="width100" />
                    </div>
                    <div class="col-sm-6">
                        <iframe width="100%" height="350" src="https://www.youtube.com/embed/AuFFejtzX9o"></iframe>
                    </div>
                    <a href="download/4-BHK-ALTERNATIVE-PLAN.pdf" target="_blank" class="floorPlanLink" title="See Floor Plan here">See Floor Plan</a>
                </div>
            </div>
            <span class="space20"></span>-->
            <a id="project5" class="large themeClrSec semiBold mrg_B_10" data-toggle="collapse" href="#multiCollapseExample5" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Penthouses</a>
            
        <!--Penthouses -->
            <div class="collapse multi-collapse" id="multiCollapseExample5">
                <div class="row ">
                    <p class="clrDarkGrey small fontRegular line-ht-5" style="padding-left:15px">
                        Enjoy limitless view from our fabulously designed 3 &amp; 4 penthouse situated on the 12th and 13th floor of  our project. For people who always like to be on the TOP.
                    </p>
                    <div class="col-sm-6">
                        <img src="images/Penthouses.jpg" class="width100" />
                    </div>
                    <div class="col-sm-6">
                        <img src="images/Penthouses-image-2.jpg" class="width100" />
                    </div>
                    <!--<div class="col-sm-6">
                        <iframe width="100%" height="350" src="https://www.youtube.com/embed/NjsN1_Oq_ic"></iframe>
                    </div>-->
                    <!--<a href="download/4-BHK-1202.pdf" target="_blank" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>-->
                </div>
                <span class="space15"></span>
                <a href="sender-details.aspx?plan=Penthouses" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>
            </div>
            <span class="space20"></span>

            <a id="project6" class="large themeClrSec semiBold mrg_B_10" data-toggle="collapse" href="#multiCollapseExample6" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Premium Bungalows</a>
           
         <!--Premium Bungalows -->
            <div class="collapse multi-collapse" id="multiCollapseExample6">
                <div class="row">
                    <p class=" clrdarkgrey small fontregular line-ht-5" style="padding-left:15px">
                        Aura Luxury Homes brings you 5 limited edition 3 BHK bungalow with servants room lift and 2 covered car parkings.
                    </p>
                    <div class="col-sm-4">
                        <img src="images/bungalow-image-1.jpg" class="width100" />
                    </div>
                    <div class="col-sm-4">
                        <img src="images/Premium-Bungalows.jpg" class="width100" />
                    </div>
                    <div class="col-sm-4">
                        <img src="images/bungalow-image-3.jpg" class="width100" />
                    </div>
                    <!--<div class="col-sm-6">
                        <iframe width="100%" height="350" src="https://www.youtube.com/embed/5slD59ESBIQ"></iframe>
                    </div>-->
                    <!--<a href="download/BUNGALOW-PLAN.pdf" target="_blank" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>-->
                </div>
                <span class="space15"></span>
                <a href="sender-details.aspx?plan=Premium-Bungalows" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>
            </div>
            <span class="space20"></span>

            <a id="project7" class="large themeClrSec semiBold mrg_B_10" data-toggle="collapse" href="#multiCollapseExample7" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Commercial Shops</a>
            <!--Commercial Shopes -->    
            <div class="collapse multi-collapse" id="multiCollapseExample7">
                    <div class="row">

                        <!--<div class="col-sm-6">
                            <img src="images/banner/aura-banner-1.jpg" class="width100" />
                        </div>
                        <div class="col-sm-6">
                            <iframe width="100%" height="350" src="https://www.youtube.com/embed/5slD59ESBIQ"></iframe>
                        </div>-->

                    </div>
                 <span class="space15"></span>
                <a href="sender-details.aspx?plan=Commercial-Shops" class="floorPlanLink" title="See Floor Plan here">Send Enquiry for More Details</a>
                </div>
        </div>
        <!-- Project Collaps list ends -->
            </div>
        </div>
        

            

        <!-- Ammenenities start -->
    <div id="ammenties_panel" ></div>
    <span class="space50"></span>

    <section id="ammentiesicons">
        <h3 class="themeClrSec semiBold text-center upperCase">Amenities For Tower</h3>
        <p class="clrDarkGrey medium fontRegular line-ht-5 text-center">
            Glorious Enhancement
        </p>
        <span class="space20"></span>

        <!--Tower 2 column amenities starts-->
        <!-- Bungalow 2 column Amenities starts -->
        <div class="container">
            <div class="row">
                <div class="col-sm-4 ">
                    <img alt="" src="images/aura-tower-building.jpg" class="width100" />
                    <span class="space15"></span>
                </div>
                <div class="col-sm-8">
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_flower"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Children's Play Area</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_lift"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">High Speed Elevators</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_solar"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Solar Net Metering</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_garden"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Landscape Park</h6>
                    </div>



                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_cctv"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">CCTV Surveilance</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_celebrate"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Celebration Lounge</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_gym"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Open Air Gym</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_games"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Indoor Games</h6>
                    </div>


                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_societyoff"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Society Office</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_divers"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Drivers Room</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_intercom"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Intercom</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_fire"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Fire Fighting System</h6>
                    </div>


                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_childrenplay"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Children Play</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_yoga"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Yoga Meditation</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_garbage"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Garbage Chute</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_videophone"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Video Door Phone</h6>
                    </div>


                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_carpark"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Puzzled Car Park System</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_backup"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">24X7 DG back up</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_carparksingle"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Separate Car Parking Area</h6>
                    </div>
                    <div class="float-left text-center px-md-3 mb-2 w-25">
                        <span class="am_common am_citizen"></span>
                        <span class="space10"></span>
                        <h6 class="fontRegular text-center tiny">Senior Citizen Area</h6>
                    </div>


                </div>
            </div>
        </div>
                  
                    <span class="space30"></span>
                    <hr />
                    <span class="space30"></span>

                    <!-- Bungalow Amenities Starts -->
                    <h3 class="themeClrSec semiBold text-center upperCase">Amenities For Premium Bungalows</h3>
                    <p class="clrDarkGrey medium fontRegular line-ht-5 text-center">
                        Glorious Enhancement
                    </p>
                    <span class="space20"></span>

                    <!-- Bungalow 2 column Amenities starts -->
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                <img alt="" src="images/aura-bungalows.jpg" class="width100" />
                                <span class="space15"></span>
                            </div>
                            <div class="col-sm-8">
                                <div class="float-left text-center px-md-3 mb-2 w-25">
                                    <span class="am_common am_lift"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Bungalows With Lifts</h6>
                                </div>
                                <div class="float-left text-center px-md-3 mb-2 w-25">
                                    <span class="am_common am_cartwo"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Two Car Parking</h6>
                                </div>

                                <div class="float-left text-center px-md-3 mb-2 w-25">
                                    <span class="am_common am_vastu"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">As Per Vastushastra</h6>
                                </div>
                                <div class="float-left text-center px-md-3 mb-2 w-25">
                                    <span class="am_common am_servantroom"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Servant's / WFH Room</h6>
                                </div>
                                <div class="float-left text-center px-md-3 mb-2 w-25">
                                    <span class="am_common am_videophone"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Video Door Phone</h6>
                                </div>
                                <div class="float-left text-center px-md-3 mb-2 w-25">
                                    <span class="am_common am_cctv"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">CCTV Surveillance</h6>
                                </div>

                                <div class="float-left text-center px-md-3 mb-2 w-25">
                                    <span class="am_common am_garden"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Landscape Garden</h6>
                                </div>
                                <div class="float-left text-center px-md-3 mb-2 w-25">
                                    <span class="am_common am_watertap"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Automated Water Lifting</h6>
                                </div>
                                <div class="float-left text-center px-md-3  mb-2 w-25">
                                    <span class="am_common am_balcony"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Balconies</h6>
                                </div>
                                <div class="float-left text-center px-md-3  mb-2 w-25">
                                    <span class="am_common am_wardrobe"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Walking Wardrobes</h6>
                                </div>
                                <div class="float-left text-center px-md-3  mb-2 w-25">
                                    <span class="am_common am_dinning"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Double Height Dinning Areas</h6>
                                </div>
                                <div class="float-left text-center px-md-3  mb-2 w-25">
                                    <span class="am_common am_parksingle"></span>
                                    <span class="space10"></span>
                                    <h6 class="fontRegular text-center tiny">Separate Parking Area</h6>
                                </div>

                            </div>
                        </div>
                    </div>

    </section>

        <span class="space40"></span>
        <hr />
        <span class="space40"></span>
        <!-- Testimonials start -->
        <section id="testimonilas">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <span class="space30"></span>
                        <h3 class="clrGrey upperCase">P  R  O  J  E  C  T  S</h3>
                        <span class="space15"></span>
                        <h2 class="">OUR</h2>
                        <h2 class="semiBold upperCase">Recent Projects</h2>
                    </div>
                    <div class="col-md-7">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="images/Marvel-Crysta-1.jpg" alt="First slide">
                                    <span class="space15"></span>
                                    <div class="text-center">
                                        <span class="semiBold semiMedium text-center themeClrPrime">Marvel Crysta 1</span>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/Marvel-Crysta-Apartment.jpg" alt="Second slide">
                                    <span class="space15"></span>
                                    <div class="text-center">
                                        <span class="semiBold semiMedium text-center themeClrPrime">Marvel Crysta Apartment</span>
                                    </div>
                                 </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/Shrija-Krupa-Apartment.jpg" alt="Third slide">
                                    <span class="space15"></span>
                                    <div class="text-center">
                                        <span class="semiBold semiMedium text-center themeClrPrime">Shrija Krupa Apartment</span>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/Shubham-Residency.jpg" alt="Third slide">
                                    <span class="space15"></span>
                                    <div class="text-center">
                                        <span class="semiBold semiMedium text-center themeClrPrime">Shubham Residency</span>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                 <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                 
                </div>
            </div>
        </section>
        <!-- Testimonials end -->
        <span class="space60"></span>
        <hr />
        <!--enquiry start  -->
        <span class="space40"></span>
        <h3 class="themeClrSec semiBold text-center upperCase mrg_B_10">Send Us Enquiry</h3>
        <section id="enquiry" class="bgApp">
            <span class="space50"></span>
            <%--<from runat="server">--%>
            <div class="container bgWhite conBoxShadow">
                <div class="">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="pad_15">
                                <form runat="server">
                                     <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" OnLoad="UpdatePanel1_Load">
                    <ContentTemplate>
                                    <img src="images/logo-company.png" />
                                    <span class="space20"></span>
                                    <div class="form-group">
                                        <label for="inputEmail4">Name *</label>
                                        <asp:TextBox ID="txtName" class="form-control" placeholder="First name" runat="server"></asp:TextBox>
                                       <%-- <input type="text" class="form-control" id="formGroupExampleInput" placeholder="First name">--%>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputPassword4">Email</label>
                                            <asp:TextBox ID="txtEmail"  class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                           <%-- <input type="email" class="form-control" id="inputEmail4" placeholder="Email">--%>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputEmail4">Mobile No *</label>
                                            <asp:TextBox ID="txtMobileNo" MaxLength="10" class="form-control" placeholder="Mobile No" runat="server"></asp:TextBox>
                                            <%--<input type="number" class="form-control" placeholder="Mobile No">--%>
                                        </div>
                                    </div>
                                     <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputCity">City *</label>
                                            <asp:TextBox ID="txtCity" class="form-control" placeholder="City" runat="server"></asp:TextBox>
                                            <%--<input type="text" class="form-control" id="inputCity" placeholder="City">--%>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Occupation *</label>
                                            <asp:DropDownList ID="ddrOccup" class="form-control" runat="server">
                                                <asp:ListItem Value="0">-- Select Occupation --</asp:ListItem>
                                                <asp:ListItem Value="1">Self Employed</asp:ListItem>
                                                <asp:ListItem Value="2">Government Servant</asp:ListItem>
                                                <asp:ListItem Value="3">Doctor</asp:ListItem>
                                                <asp:ListItem Value="4">Business</asp:ListItem>
                                                <asp:ListItem Value="5">IT Professional</asp:ListItem>
                                                <asp:ListItem Value="6">Professor</asp:ListItem>
                                                <asp:ListItem Value="7">Other</asp:ListItem>
                                            </asp:DropDownList>
                                           <%-- <select class="form-control" id="exampleFormControlSelect1">
                                                <option>Self Employed</option>
                                                <option>Government Servant</option>
                                                <option>Doctor</option>
                                                <option>Business</option>
                                                <option>IT Professional</option>
                                                <option>Professor</option>
                                                <option>Other</option>
                                            </select>--%>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Type Of Property *</label>
                                             <asp:DropDownList ID="ddrproperty" class="form-control" runat="server">
                                                <asp:ListItem Value="0">-- Select Type Of Property --</asp:ListItem>
                                                <asp:ListItem Value="1">2 BHK</asp:ListItem>
                                                <asp:ListItem Value="2">3 BHK</asp:ListItem>
                                                <asp:ListItem Value="3">Duplex Flats</asp:ListItem>
                                                <asp:ListItem Value="4">Bungalows</asp:ListItem>
                                                <asp:ListItem Value="5">Plots</asp:ListItem>
                                            </asp:DropDownList>

                                           <%-- <select class="form-control" id="exampleFormControlSelect1">
                                                <option>2 BHK</option>
                                                <option>3 BHK</option>
                                                <option>Duplex Flats</option>
                                                <option>Bungalows</option>
                                                <option>Plots</option>
                                            </select>--%>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Budget *</label>
                                             <asp:DropDownList ID="ddrBudget" class="form-control" runat="server">
                                                <asp:ListItem Value="0">-- Select Budget --</asp:ListItem>
                                                <asp:ListItem Value="1">30-40 Lakhs</asp:ListItem>
                                                <asp:ListItem Value="2">40-55 Lakhs</asp:ListItem>
                                                <asp:ListItem Value="3">60-80 Lakhs</asp:ListItem>
                                                <asp:ListItem Value="4">80 Lakhs Above</asp:ListItem>
                                            </asp:DropDownList>

                                           <%-- <select class="form-control" id="exampleFormControlSelect1">
                                                <option>30-40 Lakhs</option>
                                                <option>40-55 Lakhs</option>
                                                <option>60-80 Lakhs</option>
                                                <option>80 Lakhs Above</option>
                                            </select>--%>
                                        </div>
                                    </div>
                                     <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Reference *</label>
                                            <asp:DropDownList ID="ddrRefer" class="form-control" runat="server">
                                                <asp:ListItem Value="0">-- Select Reference --</asp:ListItem>
                                                <asp:ListItem Value="1">Radio</asp:ListItem>
                                                <asp:ListItem Value="2">Newspaper</asp:ListItem>
                                                <asp:ListItem Value="3">Hordings</asp:ListItem>
                                                <asp:ListItem Value="4">Online</asp:ListItem>
                                                <asp:ListItem Value="5">Friends / Family</asp:ListItem>
                                                <asp:ListItem Value="6">Other</asp:ListItem>
                                            </asp:DropDownList>

                                           <%-- <select class="form-control" id="exampleFormControlSelect1">
                                                 <option>Radio</option>
                                                <option>Newspaper</option>
                                                <option>Hordings</option>
                                                <option>Online</option>
                                                <option>Friends / Family</option>
                                                <option>Other</option>
                                            </select>--%>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Buying Purpose *</label>
                                             <asp:DropDownList ID="ddrpurpose" class="form-control" runat="server">
                                                <asp:ListItem Value="0">-- Select Buying Purpose --</asp:ListItem>
                                                <asp:ListItem Value="1">1st Home</asp:ListItem>
                                                <asp:ListItem Value="2">2nd Home</asp:ListItem>
                                                <asp:ListItem Value="3">Investment</asp:ListItem>
                                                <asp:ListItem Value="4">Gifting</asp:ListItem>
                                            </asp:DropDownList>

                                            <%--<select class="form-control" id="exampleFormControlSelect1">
                                               <option>1st Home</option>
                                                <option>2nd Home</option>
                                                <option>Investment</option>
                                                <option>Gifting</option>
                                            </select>--%>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress2">Message</label>
                                        <!--<input type="text" class="form-control" id="inputAddress2" placeholder="Message" height="200">-->
                                        <asp:TextBox ID="txtmsg" class="form-control" placeholder="Message" Height="150px" TextMode="MultiLine" runat="server"></asp:TextBox>
                                       <%-- <textarea class="form-control" id="exampleFormControlTextarea1" rows="4" placeholder="Message"></textarea>--%>
                                    </div>
                                   
                                    <div class="form-group">
                                        <div id="recaptcha" style="transform: scale(0.77); -webkit-transform: scale(0.77); transform-origin: 0 0; -webkit-transform-origin: 0 0;"></div>
                                        <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
                                    </div>

                                    <%--<div class="form-group">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="gridCheck">
                                            <label class="form-check-label" for="gridCheck">
                                                Check me out
                                            </label>jkgdj
                                        </div>
                                    </div>--%>

                                    <asp:Button ID="btnSubmit" class="btn btn-primary" runat="server" Text="Send" OnClick="btnSubmit_Click" />
                                    <%--<button type="submit" class="btn btn-primary">Send</button>--%>
                                 </ContentTemplate>
                </asp:UpdatePanel>
                        </form>
                            </div>
                       
                        </div>
                        <div class="col-md-4 conBox">
                            <div class="pad_15">
                                <span class="semiBold semiMedium clrWhite">Contact Info:</span>
                                <span class="space15"></span>
                                <div class="card text-white conBox" style="max-width: 22rem; border: none;">
                                    <div class="card-header text-center"><img src="images/icons/home.png" /></div>

                                    <div class="card-body">
                                        <h5 class="card-title">Address</h5>
                                        <p class="card-text">“Marvel Crysta”, Shop 7-8, Dhamni Road, Vishrambag, Sangli 416415</p>
                                    </div>
                                </div>
                                <span class="space10"></span>
                                <div class="card text-white conBox" id="contat" style="max-width: 22rem; border: none;">
                                    <div class="card-header text-center"><img src="images/icons/conCall.png" /></div>
                                    <div class="card-body">
                                        <h5 class="card-title">Contact No</h5>
                                        <a href="tel:+7875 55 00 55" class="card-text clrWhite">7875 55 00 55</a><br />
                                           <a href="tel:+904 999 4663" class="card-text clrWhite txtDecNone"> 904 999 4663(Home)</a>
                                    </div>
                                </div>
                                <span class="space10"></span>
                                <div class="card text-white conBox" style="max-width: 22rem; border:none;">
                                    <div class="card-header text-center"><img src="images/icons/conMail.png" /></div>
                                    <div class="card-body">
                                        <h5 class="card-title">Email</h5>
                                            <span class="tinysmall">psquareconstructionssangli@gmail.com</span><span class="space10"></span>
                                <!--<span class="space40"></span>
                                <img class="width100" src="images/contact.svg" />-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                    </div>
                </div>

            <span class="space50"></span>
        </section>
        <div id="map-canvas"></div>
        <!-- enquiry end -->
        <!--<span class="space50"></span>-->
        <!--<section id="conshortcut" class="themeBgThr">
            <span class="space15"></span>
            <div class="container">
                <div class="row">
                    <p class="large semiBold">Want to discuss with us ?</p>
                    <button type="button" class="btn btn-warning my-2 my-sm-0">Contact Us</button>
                </div>
            </div>
            <span class="space10"></span>
        </section>-->
        <!--<span class="space80"></span>-->
        <!-- Product video start -->
        <!-- Video Starts -->
        <!--<div class="video-container">
            <div class="video-box">
                <div class="inner-video" id="v-pl">
                    <div id="player" class="player dis-block" data-property="{videoURL:'https://www.youtube.com/watch?v=W6NZfCO5SIk',containment:'#v-pl', autoplay: true, showControls: false, mute:true, loop:true, opacity:1}"></div>
                </div>
                <div class="col_800_center txtCenter">
                    <div class="container">
                        <h4 class="clrWhite extra-large mrg_B_10">Videos</h4>
                        <span class="whiteLine margin_auto"></span>
                        <p class="clrWhite line-ht-5 mrg_B_30 letter-sp-2">Put your glance on videos of institute department various activities and college infrastructure, facilities for students.</p>
                        <a href="video-gallery" class="readAnchWhite semiBold" title="View More Videos Of KWC College">More Videos</a>
                    </div>
                </div>
            </div>
        </div>-->
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
                            <li><a href="#banner">Home</a></li>
                            <li><a href="#aboutcom">About Us</a></li>
                            <li><a href="#project">Project</a></li>
                            <li><a href="#ammenties_panel">Amenities</a></li>
                            <li><a href="#enquiry">Enquiry</a></li>
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
        <!--<script>
            // Select all links with hashes
            $('a[href*="#"]')
                // Remove links that don't actually link to anything
                .not('[href="#"]')
                .not('[href="#0"]')
                .click(function (event) {
                    // On-page links
                    if (
                        location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
                        &&
                        location.hostname == this.hostname
                    ) {
                        // Figure out element to scroll to
                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                        // Does a scroll target exist?
                        if (target.length) {
                            // Only prevent default if animation is actually gonna happen
                            event.preventDefault();
                            $('html, body').animate({
                                scrollTop: target.offset().top
                            }, 1000, function () {
                                // Callback after animation
                                // Must change focus!
                                var $target = $(target);
                                $target.focus();
                                if ($target.is(":focus")) { // Checking if the target was focused
                                    return false;
                                } else {
                                    $target.attr('tabindex', '-1'); // Adding tabindex for elements not focusable
                                    $target.focus(); // Set focus again
                                };
                            });
                        }
                    }
                });
        </script>-->

        <script type="text/javascript"
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvO0AHfg1cuND1KXbw3t5xZr5p4PVrEk4">
        </script>
        <script type="text/javascript">
            function initialize() {

                var myLatlng = new google.maps.LatLng(16.839725188884316, 74.5866215);

                var mapOptions = {
                    center: myLatlng,
                    zoom: 18, scrollwheel: false, draggable: true,
                };

                var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
                var autoqed = {
                    path: 'M95.35,50.645c0,13.98-11.389,25.322-25.438,25.322c-14.051,0-25.438-11.342-25.438-25.322   c0-13.984,11.389-25.322,25.438-25.322C83.964,25.322,95.35,36.66,95.35,50.645 M121.743,50.645C121.743,22.674,98.966,0,70.866,0   C42.768,0,19.989,22.674,19.989,50.645c0,12.298,4.408,23.574,11.733,32.345l39.188,56.283l39.761-57.104   c1.428-1.779,2.736-3.654,3.916-5.625l0.402-0.574h-0.066C119.253,68.516,121.743,59.874,121.743,50.645',
                    fillColor: '#1d3b70',
                    fillOpacity: 1,
                    scale: 0.3
                };
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    icon: autoqed,
                    map: map,
                    title: "Cuadra Medical Technology Pvt Ltd.",
                    animation: google.maps.Animation.DROP
                });
                //alert("test");
                marker.addListener('click', toggleBounce);
                function toggleBounce() {
                    if (marker.getAnimation() !== null) {
                        marker.setAnimation(null);
                    } else {
                        marker.setAnimation(google.maps.Animation.BOUNCE);
                    }
                }
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.counter').each(function () {
                $(this).prop('Counter', 0).animate({
                    Counter: $(this).text()
                }, {
                    duration: 4000,
                    easing: 'swing',
                    step: function (now) {
                        $(this).text(Math.ceil(now));
                    }
                });
            });

        });

    </script>


    <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            $("a.floorPlanLink").fancybox({
                type: 'iframe'
            });
            // alert("function called");
        });

    </script>

    <script type="text/JavaScript" language="JavaScript">
        var removeMyIFrame = function () {
            $('a.floorPlanLink').remove();
        }
    </script>



</body>
</html>
