<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="God.Payment" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Payment</title>

    <style>
        body {
            font-family: 'Segoe UI';
            text-align: center;
            background: #fff3e0;
            margin: 0;
        }

        .header {
            padding: 15px;
            background: #7a0000;
            color: white;
            font-size: 22px;
            font-weight: bold;
        }

        .box {
            margin-top: 80px;
        }

        img {
            width: 250px;
            border: 5px solid #7a0000;
            border-radius: 10px;
        }

        h2 {
            color: #7a0000;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

  
    <!-- HEADER -->
    <div class="header">
        Scan & Pay
    </div>

    <div class="box">
        <h2>Scan & Pay</h2>

        <img src="images/qr.jpeg" />

        <p>Use GPay / PhonePe / Paytm</p>
    </div>

</form>

</body>
</html>
