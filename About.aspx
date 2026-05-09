<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="God.About" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>About - Namo Naivedyam</title>

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

        /* MENU BUTTON */
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

        /* DROPDOWN */
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
            width: 60%;
            margin: 100px auto;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #7a0000;
            margin-bottom: 20px;
        }

        p {
            font-size: 15px;
            line-height: 1.8;
            color: #444;
            text-align: justify;
        }

        .highlight {
            margin-top: 25px;
            padding: 15px;
            background: #fff3e0;
            border-left: 5px solid gold;
            border-radius: 8px;
            text-align: center;
            font-weight: bold;
            color: #7a0000;
        }

        .section {
            margin-top: 25px;
        }

        .section h3 {
            color: #7a0000;
            margin-bottom: 10px;
        }

        .btn {
            display: block;
            margin: 25px auto 0;
            padding: 10px 25px;
            background: #7a0000;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            cursor: pointer;
        }

        .btn:hover {
            background: #a00000;
        }

    </style>
</head>

<body>

<form id="form1" runat="server">

    <!-- HEADER -->
    <div class="header">
        &#128725; Namo Naivedyam &#128725;

        <!-- MENU -->
        <div class="menu-container">
            <button type="button" class="menu-btn" onclick="toggleMenu()">&#8942;</button>

            <div id="dropdownMenu" class="dropdown">
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

            <h2>About Namo Naivedyam</h2>

            <p>
                Namo Naivedyam is a devotional initiative inspired by the divine blessings of Lord Venkateswara,
                created with a mission to ensure that no temple in India lacks the essential offerings required
                for daily Naivedyam.
            </p>

            <p>
                Across many villages and small temples, there is often a shortage of basic necessities such as ghee,
                grains, and groceries needed for sacred offerings. Through this platform, we aim to bridge that gap
                by connecting devotees with temples in need.
            </p>

            <p>
                Our platform allows devotees to contribute easily through small daily or yearly memberships.
                Every contribution supports temple rituals, maintains spiritual traditions, and ensures that
                divine services continue without interruption.
            </p>

            <p>
                Beyond temple support, we also focus on rural empowerment. Devotees can help adopt villages for
                farming, where the produce is used directly for temple Naivedyam — creating a cycle of devotion,
                sustainability, and community growth.
            </p>

            <div class="highlight">
                 &#128591; Even a &#8377;5 contribution can become Naivedyam at a temple.
            </div>

            <div class="section">
                <h3>Our Mission</h3>
                <p>
                    To build a devotional ecosystem where every temple receives the resources needed for daily
                    Naivedyam, while uplifting rural communities through sustainable farming and service.
                </p>
            </div>

            <div class="section">
                <h3>Our Vision</h3>
                <p>
                    To create a spiritually connected India where devotion is expressed through action,
                    and every individual can contribute to temple service regardless of location.
                </p>
            </div>

            <asp:Button ID="btnJoin" runat="server"
                Text="Join the Divine Service"
                CssClass="btn"
                PostBackUrl="Default.aspx" />

        </div>

    </div>

</form>

<!-- SCRIPT -->
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
