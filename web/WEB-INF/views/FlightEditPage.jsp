<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Flight</title>

    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300);
        .form {
            position: relative;
            top: 150px;
            z-index: 2;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }
        input{
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }
        button {
            font-family: "Roboto", sans-serif;
            text-transform: uppercase;
            outline: 0;
            background: #337ab7;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
        }
        button:hover,button:active,button:focus {
            background: #265a88;
        }
        message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }
        message a {
            color: #4CAF50;
            text-decoration: none;
        }
        .container {
            position: relative;
            z-index: 2;
            max-width: 300px;
            margin: 0 auto;
        }
        .container:before, .container:after {
            content: "";
            display: block;
            clear: both;
        }
        .container .info {
            margin: 50px auto;
            text-align: center;
        }
        h1 {
            margin: 0 0 15px;
            padding: 0;
            font-size: 28px;
            font-weight: 300;
            color: #1a1a1a;
        }
        span {
            color: #4d4d4d;
            font-size: 12px;
        }
        span a {
            color: #000000;
            text-decoration: none;
        }
        body {
            background: 	#FFFFFF; /* fallback for old browsers */
            background: -webkit-linear-gradient(right,#FFFFFF, 	#FFFFFF);
            background: -moz-linear-gradient(right, #FFFFFF,	#FFFFFF);
            background: -o-linear-gradient(right, #FFFFFF, 	#FFFFFF);
            background: linear-gradient(to left, #FFFFFF, 	#FFFFFF);
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        #footer{
            z-index: 3;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>

</head>
<body>
<div class="form">
    <form modelAttribute="flight" action="/employee/flights/update" method="post">
        <!---------------------------------------------LOGIN FORM------------------------------------------------------->
        <h1>Flight Information</h1>
        <input class="name" name="id" hidden="true" type="text" value="${flight.id}"/>
        <p class="message">Departure:
            <input class="name" name="placeFrom" type="text" value="${flight.placeFrom}"/>
        </p>
        <p class="message">Destination:
            <input class="name" name="placeTo" type="text" value="${flight.placeTo}"/>
        </p>
        <p class="message">Departure date and time:
            <input class="name" name="dateFrom" type="datetime" value="${flight.dateFrom}"/>
        </p>
        <p class="message">Arrival date and time:
            <input class="name" name="dateTo" type="datetime" value="${flight.dateTo}"/>
        </p>
        <p class="message">Number of seats:
            <input class="name" name="numberOfSeats" type="text" value="${flight.numberOfSeats}"/>
        </p>
        <p class="message">Ticket price:
            <input class="name" name="price" type="text" value="${flight.price}"/>
        </p>
        <button>Edit</button>
        <!--------------------------------------------REFERINTA PENTRU BACK ------------------------------------------------------>
        <p></p>
        <a href="/employee/flights/all"><button>Cancel</button></a>
    </form>
    <!---------------------------------------------LOGIN FORM------------------------------------------------------->
</div>
<div id="footer">
    <p class="message">Errors: <span style="color:red">${error}</span></p>
    <p class="message">Message: <span style="color:green">${message}</span></p>
</div>
</body>
</html>