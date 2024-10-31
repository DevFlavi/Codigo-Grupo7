<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoteles en Lambayeque</title>
    <link rel="stylesheet" href="styles.css"> 
    <style>
       
        @font-face {
            font-family: 'FuenteHotel'; 
            src: url('fonts/RuthlessSketch-Regular.ttf') format('truetype'); 
            font-weight: normal;
            font-style: normal;
        }
        body {
            font-family: 'FuenteHotel', Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
            background-image: url('images/FondoHotel.jpg');
            background-size: cover;
            background-position: center;
            color: rgb(202, 168, 168);
        }

        header {
            background-color: rgba(14, 12, 12, 0.8);
            padding: 20px;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 0;
        }

        .location-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            padding: 20px;
            justify-items: center;
        }

        .location-card {
            background: rgba(240, 240, 240, 0.9);
            border-radius: 12px;
            margin: 15px;
            padding: 15px;
            width: 350px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s;
            text-align: left;
        }

        .location-card:hover {
            transform: scale(1.05);
        }

        .location-card img {
            width: 100%;
            height: 200px;
            border-radius: 12px;
            object-fit: cover;
        }

        .map-container {
            height: 200px;
            border-radius: 12px;
            overflow: hidden;
        }

        .reserve-button {
            display: inline-block;
            background-color: rgb(202, 168, 168);
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            margin-top: 10px;
        }

        .reserve-button:hover {
            background-color: rgba(202, 168, 168, 0.8);
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: rgba(14, 12, 12, 0.8);
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.5);
        }
        nav {
            background-color: rgba(14, 12, 12, 0.8);
            padding: 10px;
        }

        nav ul {
            list-style: none; 
            padding: 0;
            margin: 0;
        }

        nav ul li {
            display: inline; 
            margin: 0 15px; 
        }

        nav ul li a {
            color: rgb(202, 168, 168); 
            text-decoration: none; 
        }

        nav ul li a:hover {
            text-decoration: underline; 
        }
    </style>
</head>
<body>
    <header>
        <h1>Hoteles en Lambayeque</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="destinos.jsp">Destinos</a></li> 
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
    </nav>
    <div class="location-container">
        <div class="location-card">
            <img src="images/lambayeque1.jpg" alt="Plaza Mayor de Lima">
            <h3>Hotel Heaven</h3>
            <p>Una opción cómoda y accesible en Lambayeque, cerca de puntos históricos.</p>
            <div class="map-container">
                
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3938.711874447678!2d-79.90516228537435!3d-6.701003990417522!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x904ceed073d7a2d9%3A0x348b6a9318edc178!2sParque%20Principal%20de%20Lambayeque!5e0!3m2!1ses!2spe!4v1698773133368!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
        <div class="location-card">
            <img src="images/lambayeque2.jpg" alt="Plaza Mayor de Lima">
            <h3>Hotel Edén perdido 2</h3>
            <p>Disfruta de una estadía cómoda en un entorno tranquilo y acogedor.</p>
            <div class="map-container">
                
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3938.5292179051353!2d-79.84639918537429!3d-6.7647680903893835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x904ceed073d7a2d9%3A0x348b6a9318edc178!2sMuseo%20de%20Sitio%20Huaca%20Rajada%20-%20Sip%C3%A1n!5e0!3m2!1ses!2spe!4v1698773145568!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Hoteles en Lambayeque. Todos los derechos reservados.</p>
    </footer>
</body>
</html>


