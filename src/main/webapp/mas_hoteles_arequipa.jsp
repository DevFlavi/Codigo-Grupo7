<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoteles en Arequipa</title>
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
        <h1>Hoteles en Arequipa</h1>
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
            <img src="images/hotel_el_cabildo.jpg" alt="Hotel El Cabildo">
            <h3>Hotel El Cabildo</h3>
            <p>Un hotel con estilo colonial y cómodas habitaciones.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1914.894213474415!2d-71.53718098405736!3d-16.40988898884093!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9108c7865f2d4d47%3A0xe38f82c705da06e8!2sHotel%20El%20Cabildo!5e0!3m2!1ses!2spe!4v1698774129343!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
        <div class="location-card">
            <img src="images/hotel_posada_del_monasterio.jpg" alt="Posada del Monasterio">
            <h3>Posada del Monasterio</h3>
            <p>Encanto y tranquilidad en un monasterio restaurado.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1914.4763423826035!2d-71.53514908405748!3d-16.39891828884834!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9108c75f4031cd49%3A0xc8f7765eecb7f2d7!2sPosada%20del%20Monasterio!5e0!3m2!1ses!2spe!4v1698774178149!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
        <div class="location-card">
            <img src="images/hotelCasaAndina.jpg" alt="Casa Andina Select Arequipa">
            <h3>Casa Andina Select Arequipa</h3>
            <p>Modernidad y confort en el corazón de la ciudad.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1914.8971538676196!2d-71.53065808405734!3d-16.408427088841394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9108c784bc9c1f09%3A0x2f7e7c4ab23e7e4f!2sCasa%20Andina%20Select%20Arequipa!5e0!3m2!1ses!2spe!4v1698774204126!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
        <div class="location-card">
            <img src="images/hotelSonesta.jpg" alt="Sonesta Hotel Arequipa">
            <h3>Sonesta Hotel Arequipa</h3>
            <p>Comodidad y elegancia con vistas espectaculares.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1914.694688878458!2d-71.53281668405727!3d-16.404287288840682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9108c7875b24cba9%3A0x62c00cb3714e083e!2sSonesta%20Hotel%20Arequipa!5e0!3m2!1ses!2spe!4v1698774252153!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Hoteles en Arequipa. Todos los derechos reservados.</p>
    </footer>
</body>
</html>


