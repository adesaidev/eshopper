<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Eshopper_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home | Shopper</title>
    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#cart").click(function () {
                $(".ddl_cart").slideToggle(300);
            });
        });
        window.one = function (obj) {
            var item = $(obj).parent().andSelf().remove(alert('remove'));
        }
    </script>
    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
            outline: none;
            border: 0;
        }
        body
        {
            font-family: Arial;
        }
        ul, ol
        {
            list-style: none;
        }
        .wrapper
        {
            width: 980px;
            margin: 0 auto;
            position: relative;
        }
        .cart
        {
            position: relative;
            float: right;
            color: hsla(123, 51%, 68%,1);
        }
        .ddl_cart
        {
            position: absolute;
            top: 50px;
            right: 0;
            z-index: 99;
            display: none;
            border: 1px solid #ddd;
            box-shadow: 0 0 0 5px rgba(0,0,0,0.5);
        }
        .ddl_cart ul
        {
            width: 300px;
            min-width: 350px;
        }
        .ddl_cart li
        {
            display: block;
            padding: 3px 10px;
            margin: 3px 0;
            border-bottom: 1px solid #ddd;
        }
        .ddl_cart li:after
        {
            content: "";
            clear: both;
            display: block;
        }
        .ddl_cart img
        {
            width: 20%;
            float: left;
        }
        .ddl_cart .detail
        {
            float: left;
            padding-left: 10px;
        }
        .ddl_cart .detail span
        {
            display: block;
        }
        .ddl_cart .remove
        {
            float: right;
            cursor: pointer;
            padding: 10px;
            background: #ff0000;
            color: #fff;
        }
        .ddl_cart .remove:hover
        {
            background: #E00404;
        }
        .tbl_cart
        {
            border-collapse: collapse;
        }
        .tbl_cart td
        {
            font-size: 12px !important;
            font-style: italic !important;
            border: 1px solid #ddd !important;
            padding: 5px;
        }
        .btn_shop
        {
            padding: 5px 10px;
            border: 1px solid #ddd;
            background: #eee;
            text-decoration: none;
            font-style: normal;
            font-weight:bold;
            margin: 10px 0; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <a href="#" class="cart" id="cart">Cart</a>
        <div class="ddl_cart">
            <ul>
                <li>
                    <img src="images/shop/product12.jpg" width="100%" />
                    <span class="detail"><span>Item Name</span><br />
                        <span>$50</span> </span>
                    <button onclick="one(this)" class="remove">
                        X</button></li>
                <li>
                    <img src="images/shop/product12.jpg" width="100%" />
                    <span class="detail"><span>Item Name</span><br />
                        <span>$100</span> </span>
                    <button onclick="one(this)" class="remove">
                        X</button></li>
                <li>
                    <img src="images/shop/product12.jpg" width="100%" />
                    <span class="detail"><span>Item Name</span><br />
                        <span>$20</span> </span>
                    <button onclick="one(this)" class="remove">
                        X</button></li>
                <li>
                    <table width="100%" class="tbl_cart">
                        <tr>
                            <td>
                                Discount (%):
                            </td>
                            <td align="right">
                                $23423
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Grand Total :
                            </td>
                            <td align="right">
                                $3423434
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <a href="#" class="btn_shop">Shopping</a>
                            </td>
                            <td align="center">
                                <a href="#">View Cart</a>
                            </td>
                        </tr>
                    </table>
                </li>
            </ul>
        </div>
    </div>
    </form>
</body>
</html>
