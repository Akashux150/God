<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="God.Contact" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Contact - Namo Naivedyam</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: linear-gradient(to right, #ff9933, #ffcc80);
        }

        /* HEADER */
        .header {
            position: fixed;
            top: 0;
            width: 100%;
            height: 70px;
            line-height: 70px;
            text-align: center;
            background: #7a0000;
            color: white;
            font-size: 26px;
            font-weight: bold;
            z-index: 9999;
        }

        /* MENU */
        .menu-container {
            position: absolute;
            right: 20px;
            top: 0;
            height: 100%;
            display: flex;
            align-items: center;
        }

        .menu-btn {
            background: transparent;
            border: none;
            color: white;
            font-size: 22px;
            cursor: pointer;
            position: absolute;
            right: 20px;
            top: 22px;
        }

        .dropdown {
            position: fixed;
            top: 70px;
            right: -250px;
            width: 220px;
            height: 100%;
            background: linear-gradient(to bottom, #7a0000, #a00000);
            box-shadow: -4px 0 15px rgba(0,0,0,0.3);
            transition: right 0.4s ease;
            z-index: 9999;
            padding-top: 20px;
        }

        .dropdown.show {
            right: 0;
        }

        .dropdown a {
            display: block;
            padding: 15px 20px;
            color: white;
            text-decoration: none;
            font-size: 15px;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .dropdown a:hover {
            background: rgba(255, 215, 0, 0.2);
            padding-left: 25px;
            transition: 0.3s;
        }

        .container {
            width: 50%;
            margin: 110px auto;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            color: #7a0000;
            margin-bottom: 15px;
        }

        p {
            font-size: 14px;
            color: #444;
            line-height: 1.6;
        }

        .highlight {
            margin: 20px 0;
            padding: 15px;
            background: #fff3e0;
            border-left: 5px solid gold;
            border-radius: 8px;
            font-weight: bold;
            color: #7a0000;
        }

        .contact-box {
            margin-top: 20px;
            padding: 15px;
            border-radius: 10px;
            background: #f9f9f9;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .contact-box h3 {
            color: #7a0000;
            margin-bottom: 5px;
        }

        .call-btn {
            display: block;
            margin: 25px auto 0;
            padding: 12px 30px;
            background: #7a0000;
            color: white;
            text-decoration: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            width: fit-content;
        }

        .call-btn:hover {
            background: #a00000;
        }

        .whatsapp-btn {
            display: block;
            margin: 15px auto;
            padding: 10px 25px;
            background: #25D366;
            color: white;
            text-decoration: none;
            border-radius: 10px;
            font-size: 14px;
            width: fit-content;
        }

        .whatsapp-btn:hover {
            background: #1ebd5a;
        }

    </style>
</head>

<body>

<form id="form1" runat="server">

    <!-- HEADER -->
    <div class="header">
        &#128222; Contact Namo Naivedyam

        <!-- MENU -->
        <div class="menu-container">
            <button type="button" class="menu-btn" onclick="toggleMenu()">&#8942;</button>

            <div id="dropdownMenu" class="dropdown">
                <a href="Default.aspx">Home</a>
                <a href="About.aspx">About</a>
                <a href="Mission.aspx">Mission</a>
                <a href="BusBooking.aspx">Bus Booking</a>
                <a href="HotelBooking.aspx">Hotel Booking</a>
                <a href="Contact.aspx">Contact</a>
            </div>
        </div>
    </div>

    <div class="container">

        <div class="card">

            <h2>Get in Touch &#128591;</h2>

            <p>
                If you wish to support temple Naivedyam, contribute, or need assistance,
                we are here to guide you with devotion and care.
            </p>

            <div class="highlight">
                &#128591; Your one call can help serve Naivedyam in temples across India
            </div>

            <div class="contact-box">
                <h3>&#128241; Call Us</h3>
                <p><strong>+91 9XXXXXXXXX</strong></p>
            </div>

            <div class="contact-box">
                <h3>&#128231; Email</h3>
                <p>support@namonaivedyam.org</p>
            </div>

            <div class="contact-box">
                <h3>&#128205; Location</h3>
                <p>Serving Devotees Across India</p>
            </div>

            <a href="tel:+919XXXXXXXXX" class="call-btn">
                &#128241; Call Now
            </a>

            <a href="https://wa.me/919XXXXXXXXX" class="whatsapp-btn">
                &#128172; Chat on WhatsApp
            </a>

        </div>

    </div>

</form>

<script>
    function toggleMenu() {
        var menu = document.getElementById("dropdownMenu");
        menu.classList.toggle("show");
    }

    document.addEventListener("click", function (event) {
        var menu = document.getElementById("dropdownMenu");
        var btn = document.querySelector(".menu-btn");

        if (!btn.contains(event.target) && !menu.contains(event.target)) {
            menu.classList.remove("show");
        }
    });
</script>

</body>
</html>
