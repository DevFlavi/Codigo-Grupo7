<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoteles en Lima</title>
    <link rel="stylesheet" href="styles.css"> <!-- Enlace a tu CSS -->
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
        <h1>Hoteles en Lima</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="destinos.jsp">Destinos</a></li> 
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
    </nav>
    <div>
        <h2>Tenemos 5 hoteles disponibles en Lima.</h2>
        <p>Aquí puedes encontrar la mejor opción para tu estancia.</p>
    </div>

    <div class="location-container">
        <div class="location-card">
            <img src="images/plaza_mayor_lima.jpg" alt="Plaza Mayor de Lima">
            <h3>Plaza Mayor de Lima</h3>
            <p>Ubicación histórica y cultural en el corazón de Lima.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.7241274399347!2d-77.04279368592534!3d-12.046374063850133!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c9aeeb6c25f7%3A0x33e5203a4e8b66e2!2sPlaza%20Mayor%20de%20Lima!5e0!3m2!1ses!2spe!4v1698771930007!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a> 
        </div>
        <div class="location-card">
            <img src="images/parque_kennedy.jpg" alt="Parque Kennedy">
            <h3>Parque Kennedy</h3>
            <p>Un lugar popular lleno de vida y restaurantes en Miraflores.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3903.5805365601853!2d-77.0291927859283!3d-12.122771155522763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c89a18b9e9d7%3A0x43bb01cfa53e5474!2sParque%20Kennedy!5e0!3m2!1ses!2spe!4v1698772172235!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a> 
        </div>
        <div class="location-card">
            <img src="images/malecon_miraflores.jpg" alt="Malecón de Miraflores">
            <h3>Malecón de Miraflores</h3>
            <p>Un hermoso paseo frente al mar con vistas espectaculares.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3903.7313189471434!2d-77.02378968592827!3d-12.137236350547915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c87eabea57b3%3A0xb08ec824cc8684cf!2sMalec%C3%B3n%20de%20Miraflores!5e0!3m2!1ses!2spe!4v1698772382015!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
        <div class="location-card">
            <img src="images/lima_arte.jpg" alt="Museo de Arte de Lima">
            <h3>Museo de Arte de Lima</h3>
            <p>Un lugar lleno de cultura y exposiciones artísticas.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.5081324935456!2d-77.02998148592504!3d-12.04614506381204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c9aeefc68ffb%3A0x4eb9ff91b0934908!2sMuseo%20de%20Arte%20de%20Lima!5e0!3m2!1ses!2spe!4v1698772551967!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a> 
        </div>
        <div class="location-card">
            <img src="images/pueblo_libre.jpg" alt="Pueblo Libre">
            <h3>Pueblo Libre</h3>
            <p>Un distrito con historia y cultura, perfecto para los amantes del arte.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.6081160654847!2d-77.03809468592511!3d-12.049973766227704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c9a99c6a71db%3A0x1e3c39f900e83b84!2sPueblo%20Libre!5e0!3m2!1ses!2spe!4v1698772791367!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a> 
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Hoteles en Lima. Todos los derechos reservados.</p>
    </footer>
</body>
</html>




