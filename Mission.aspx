<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mission.aspx.cs" Inherits="God.Mission" %>



<!DOCTYPE html>
<html>
<head runat="server">
    <title>Mission - Namo Naivedyam</title>

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

        /* CONTENT */
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

        h3 {
            color: #7a0000;
            margin-top: 20px;
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

        .flow {
            margin-top: 15px;
            padding: 15px;
            background: #f9f9f9;
            border-radius: 8px;
            text-align: center;
            font-weight: 500;
        }

        .btn {
            display: block;
            margin: 30px auto 0;
            padding: 12px 30px;
            background: #7a0000;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 15px;
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
        &#128591; Our Mission &#128591;

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

            <h2>&#128591; Serving Naivedyam to Every Temple</h2>

            <p>
                Namo Naivedyam was created with a divine mission — to prepare pure ghee
                and supply essential offerings to temples across India, from small village temples
                to major spiritual centers.
            </p>

            <p>
                Our goal is to ensure that every temple, regardless of its size or location,
                receives the required materials for daily Naivedyam without interruption.
            </p>

            <h3>&#127919; Core Mission</h3>
            <p>
                &#10004; Preparation and supply of pure ghee to temples<br />
                &#10004; Providing groceries required for Naivedyam<br />
                &#10004; Supporting both small and major temples across India<br />
                &#10004; Maintaining uninterrupted temple rituals
            </p>

            <h3>&#127806; Organic Farming Initiative</h3>
            <p>
                Devotees can adopt villages for cultivation. Each village utilizes approximately
                10 acres of land for growing groceries using organic farming methods.
            </p>

            <p>
                These products are directly used for temple Naivedyam, ensuring purity,
                sustainability, and devotion.
            </p>

            <h3>&#128260; Supply & Distribution</h3>
            <p>
                Collected materials are distributed to temples like Tirupati Balaji,
                Badrinath, and other major temples across India.
            </p>

            <h3>&#128736; Operational Model</h3>
            <p>
                Each region will have one organizer responsible for managing operations,
                ensuring proper execution and supply chain management.
            </p>

            <h3>&#127969; Village Development</h3>
            <p>
                We also focus on renovating village temples and supporting rural communities
                through organic initiatives.
            </p>

            <h3>&#127793; Social Impact</h3>
            <p>
                Our mission includes planting trees, fruit plants, and medicinal plants,
                along with improving rural education and empowerment.
            </p>

            <h3>&#129309; Volunteer Network</h3>
            <p>
                Any devotee can join as a volunteer (Karyakarta). Volunteers can dedicate
                their free time to support temple services and social initiatives.
            </p>

            <div class="flow">
                100 Volunteers &#10141; 1 Organizer &#10141; Structured Execution &#10141; Temple Service
            </div>

            <div class="highlight">
                &#128591; Even a small contribution can become Naivedyam in a temple
            </div>

            <!-- CTA -->
            <asp:Button ID="btnJoin" runat="server"
                Text="Be a Part of Naivedyam"
                CssClass="btn"
                PostBackUrl="Default.aspx" />

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
