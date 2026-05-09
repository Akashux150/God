<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="God.Default " %>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="God.Default" ResponseEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head runat="server">
    
    <title>Om Namo Naivedyam</title>

<style>
        body
        {
            margin: 0;
            font-family: 'Segoe UI';
            background: linear-gradient(to right, #ff9933, #ffcc80);
        }

        .header
        {
          position: fixed;
          text-align: center;
          top:0;
          width: 100%;
          height: 70px; /* 🔥 FIXED HEIGHT */
          line-height: 70px; /* vertical align text */
          z-index: 9999;

          background: #7a0000;
          color: white;
          font-size: 26px;
          font-weight: bold;
        } 
       .container
       {
         width: 40%;
         margin: 100px auto 30px auto;
         position: relative;
         z-index: 2;

         opacity: 0;              /* 🔥 hidden initially */
         transform: translateY(20px);
         transition: all 0.8s ease; /* smooth animation */
       }

        /* 🔥 CARD BACK (IMPORTANT FIX) */
        .card
        {
            background: white;
            padding: 25px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.2);
        }

        h2
        {
            font-size: 20px;
            margin-bottom: 15px;
            text-align: center;
            color: #7a0000;
        }

        h3
        {
            margin-top: 15px;
            color: #333;
        }

        /* INFO TEXT */
        .info-text
        {
            font-size: 13px;
            line-height: 1.6;
            text-align: center;
            color: #444;
        }

        .highlight
        {
            margin-top: 10px;
            background: #fff3e0;
            padding: 10px;
            border-radius: 6px;
            font-weight: bold;
            text-align: center;
            color: #7a0000;
        }

        .radio-line
        {
            text-align: center;
            margin-bottom: 15px;
        }

        .radio-line label
        {
            margin: 0 10px;
            font-size: 14px;
        }

        .input
        {
            width: 100%;
            padding: 8px 10px;
            font-size: 13px;
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-top: 5px;
        }

        .row
        {
            display: flex;
            gap: 10px;
        }

        .row .input
        {
            flex: 1;
        }

        .btn
        {
            display: block;
            margin: 15px auto;
            padding: 8px 20px;
            font-size: 13px;
            border-radius: 6px;
            border: none;
            background: #7a0000;
            color: white;
            cursor: pointer;
        }

        .btn:hover
        {
            background: #a00000;
        }

        .error
        {
            color: red;
            font-size: 12px;
        }
        .success
        {
         text-align: center;
         color: green;
         font-size: 14px;
          margin-top: 10px;
        }
        .pay-btn
        {
          display: inline-block;
          padding: 8px 15px;
          background: #7a0000;
          color: white;
          text-decoration: none;
          border-radius: 6px;
          font-size: 13px;
        }

      .pay-btn:hover
      {
       background: #a00000;
      }
      .audio-btn
      {
        margin-left: 10px;
        background: transparent;   /* 🔥 removes white circle */
        border: none;
        color: white;              /* icon color */
        font-size: 18px;
        cursor: pointer;
      }

      .audio-btn:hover
      {
        opacity: 0.8;              /* slight hover effect */
      }
      .audio-btn:hover {
        text-shadow: 0 0 8px #fff;
      }
      #bgVideo
      {
        position: fixed;
        top: 70px; /* 🔥 IMPORTANT */
        left: 0;
        width: 100%;
        height: calc(100% - 70px); /* adjust height */
        object-fit: cover;
        z-index: -1;
      }
      .show-content
      {
       opacity: 1;
       transform: translateY(0);
      }
      /* 🔥 MENU BUTTON */
      .menu-container
      {
        position: absolute;
        right: 20px;
        top: 0;
        height: 100%;
        display: flex;
        align-items: center;
      }

      .menu-btn
      {
       background: transparent;
       border: none;
       color: white;
       font-size: 22px;
       cursor: pointer;
       position: absolute;
       right: 20px;
       top: 22px;
      }

      /* 🔥 DROPDOWN */
      .dropdown
      {
        position: fixed;
        top: 70px; /* below header */
        right: -250px; /* hidden */
        width: 220px;
        height: 100%;
        background: linear-gradient(to bottom, #7a0000, #a00000);
        box-shadow: -4px 0 15px rgba(0,0,0,0.3);
        transition: right 0.4s ease;
        z-index: 9999;
        padding-top: 20px;
       }

      /* LINKS */
     .dropdown a
     {
      display: block;
      padding: 15px 20px;
      color: white;
      text-decoration: none;
      font-size: 15px;
      border-bottom: 1px solid rgba(255,255,255,0.1);
     }
    .dropdown.show
    {
     right: 0;
    }

    /* 🔥 HOVER EFFECT */
    .dropdown a:hover
    {
     background: rgba(255, 215, 0, 0.2); /* gold effect */
     padding-left: 25px;
     transition: 0.3s;
    }
</style>

</head>

<body>

<form id="form1" runat="server">

  <asp:ScriptManager ID="ScriptManager1" runat="server" />

   <!-- 🔊 BALAJI CHANT -->
    <audio id="balajiAudio" loop preload="auto">
        <source src="audio/audio.mp3" type="audio/mp3">
    </audio>
  <!-- BALAJI VIDEO -->
 <%-- <video autoplay muted loop id="bgVideo">
    <source src="video/bg.mp4" type="video/mp4">
</video>--%>
  <video id="bgVideo" autoplay="autoplay" muted="muted" loop="loop" playsinline="playsinline">
    <source src="video/bg.mp4" type="video/mp4" />
</video>

    <!-- HEADER -->
    <div class="header">
        &#128725; Namo Naivedyam &#128725;
    
        <!-- 🔊 AUDIO BUTTON -->
    <button type="button" onclick="toggleAudio()" class="audio-btn">
        &#128266;
    </button>
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

        <!-- 🔥 INFO SECTION (FIXED) -->
        <div class="card">
            <div class="info-text">
                We provide all India bhogam and supply to temples free of cost.
                Includes free ghee, grocery for naivedyam, temple care and support for cows in temples.
                <br /><br />
                Devotees can adopt villages for cultivating farming and supplying groceries for Naivedyam.
            </div>
          <p>loremipsum
          </p>

       <div class="highlight">
    &#128591; Membership: Daily &#8377;5/- | Yearly &#8377;1500/-
    <br /><br />

    <a href="Payment.aspx" class="pay-btn">Pay Now</a>
</div>
        </div>
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <!-- POOJA -->
        <div class="card">
            <h2>Select Pooja Type</h2>

            <div class="radio-line">
                <label><asp:RadioButton ID="rb1" runat="server" GroupName="pooja" /> Birthday</label>
                <label><asp:RadioButton ID="rb2" runat="server" GroupName="pooja" /> Anniversary</label>
                <label><asp:RadioButton ID="rb3" runat="server" GroupName="pooja" /> Pitra Pooja</label>
            </div>

            <asp:Label ID="lblPoojaError" runat="server" CssClass="error"></asp:Label>

            <asp:TextBox ID="txtDate" runat="server" CssClass="input" placeholder="MM/DD/YYYY"></asp:TextBox>

          

            <asp:RequiredFieldValidator ID="rfvDate" runat="server"
                ControlToValidate="txtDate"
                ErrorMessage="Enter Date"
                CssClass="error"
              ValidationGroup="pooja"/>

            <asp:Button ID="btnSubmitPooja" runat="server"
                Text="Submit"
                CssClass="btn"
                OnClick="btnSubmitPooja_Click"
              ValidationGroup="pooja"/>
         
          
<!-- ✅ ADD HERE -->
<asp:Label ID="lblPoojaSuccess" runat="server" CssClass="success"></asp:Label>
        </div>
       </ContentTemplate>
</asp:UpdatePanel>
      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <!-- DEVOTEE -->
        <div class="card">
            <h2>Devotee Details And Temple details</h2>

            <asp:TextBox ID="txtName" runat="server" CssClass="input" placeholder="Full Name"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="rfvName" runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Enter Name"
                CssClass="error" />

            <asp:TextBox ID="txtAadhar" runat="server" CssClass="input" placeholder="Aadhar Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAadhar" runat="server"
                ControlToValidate="txtAadhar"
                ErrorMessage="Enter Aadhar"
                CssClass="error" />

            <asp:TextBox ID="txtAddress" runat="server" CssClass="input" placeholder="Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                ControlToValidate="txtAddress"
                ErrorMessage="Enter Address"
                CssClass="error"
              ValidationGroup="devotee" />

            <div class="row">
                <div>
                    <asp:TextBox ID="txtPincode" runat="server" CssClass="input" placeholder="Pincode"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPin" runat="server"
                        ControlToValidate="txtPincode"
                        ErrorMessage="Enter Pincode"
                        CssClass="error"
                      ValidationGroup="devotee" />
                </div>

                <div>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="input" placeholder="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Enter Phone"
                        CssClass="error"
                      ValidationGroup="devotee" />
                </div>
            </div>
          

            <%--<h3>Temple Details</h3>--%>

            <asp:TextBox ID="txtTempleAddress" runat="server" CssClass="input" placeholder="Temple Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTAdd" runat="server"
                ControlToValidate="txtTempleAddress"
                ErrorMessage="Enter Temple Address"
                CssClass="error" />

            <div class="row">
                <div>
                    <asp:TextBox ID="txtTemplePincode" runat="server" CssClass="input" placeholder="Temple Pincode"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTPin" runat="server"
                        ControlToValidate="txtTemplePincode"
                        ErrorMessage="Enter Temple Pincode"
                        CssClass="error" />
                </div>

                <div>
                    <asp:TextBox ID="txtTemplePhone" runat="server" CssClass="input" placeholder="Temple Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTPhone" runat="server"
                        ControlToValidate="txtTemplePhone"
                        ErrorMessage="Enter Temple Phone"
                        CssClass="error" />
                </div>
            </div>

            <asp:Button ID="btnSubmitDevotee" runat="server"
                Text="Submit Details"
                CssClass="btn"
                OnClick="btnSubmitDevotee_Click" />

          <asp:Label ID="lblDevoteeSuccess" runat="server" CssClass="success"></asp:Label>
      

        </div>
      
    </ContentTemplate>
</asp:UpdatePanel>
    </div>

</form>
  <script>

   
// 🔥 PAGE LOAD
      window.onload = function () {

    var audio = document.getElementById("balajiAudio");
      var container = document.querySelector(".container");

      // 🔊 AUDIO AUTOPLAY (with fallback)
      audio.play().catch(function () {
        document.body.addEventListener("click", function () {
          audio.play();
        }, { once: true });
    });

      // 🔥 SHOW CONTENT AFTER 2 SECONDS
      setTimeout(function () {
        container.classList.add("show-content");
    }, 2000);
};


      // 🔊 AUDIO CONTROL
      var isPlaying = false;

      function toggleAudio() {
    var audio = document.getElementById("balajiAudio");

      if (!isPlaying) {
        audio.play();
      isPlaying = true;
      sessionStorage.setItem("audioAllowed", "true");
    } else {
        audio.pause();
      isPlaying = false;
    }
}


      // 🍔 MENU TOGGLE (SLIDE PANEL)
      function toggleMenu() {
    var menu = document.getElementById("dropdownMenu");
      menu.classList.toggle("show");
}


      // ❌ CLOSE MENU WHEN CLICK OUTSIDE
      document.addEventListener("click", function (event) {
    var menu = document.getElementById("dropdownMenu");
      var btn = document.querySelector(".menu-btn");

      if (!btn.contains(event.target) && !menu.contains(event.target)) {
        menu.classList.remove("show");
    }
      });

    function hideMessage() {
      setTimeout(function () {
        var msg = document.getElementById("<%= lblPoojaSuccess.ClientID %>");
      if (msg) msg.innerHTML = "";
    }, 2000);
    }

    function hideDevoteeMessage() {
      setTimeout(function () {
        var msg = document.getElementById("<%= lblDevoteeSuccess.ClientID %>");
      if (msg) msg.innerHTML = "";
    }, 2000);
    }
  </script>
  
</body>
</html>



