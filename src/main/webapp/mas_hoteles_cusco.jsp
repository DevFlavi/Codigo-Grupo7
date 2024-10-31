<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoteles en Lima</title>
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
        <h1>Hoteles en Cusco</h1>
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
            <img src="images/hotel_san_agustin.jpg" alt="Hotel San Agustin">
            <h3>Hotel San Agustin</h3>
            <p>Un hotel que combina la tradición cusqueña con la comodidad moderna.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3938.767299235888!2d-71.98308278537447!3d-13.51617199019597!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91051cba7d24cbbf%3A0xc70fda7a1b2b3f4f!2sHotel%20San%20Agustin!5e0!3m2!1ses!2spe!4v1698773043368!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
        <div class="location-card">
            <img src="images/hotel_cusco_premium.jpg" alt="Cusco Premium Hotel">
            <h3>Cusco Premium Hotel</h3>
            <p>Elegancia y confort en el corazón de Cusco.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3938.782053557689!2d-71.97590368537443!3d-13.520327990168034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91051cba1c0842eb%3A0x3532cb179b3fded6!2sCusco%20Premium%20Hotel!5e0!3m2!1ses!2spe!4v1698773074903!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
        <div class="location-card">
            <img src="images/hotel_jw_marriott.jpg" alt="JW Marriott Cusco">
            <h3>JW Marriott Cusco</h3>
            <p>Lujo y confort en un ambiente histórico.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3938.7440624082647!2d-71.97113428537429!3d-13.525026890158463!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91051cbbdb4a849d%3A0xf8ef6c55afbc20e2!2sJW%20Marriott%20Cusco!5e0!3m2!1ses!2spe!4v1698773101627!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
        <div class="location-card">
            <img src="images/hotel_tambo_del_inca.jpg" alt="Tambo del Inca">
            <h3>Tambo del Inca</h3>
            <p>Un retiro de lujo rodeado de naturaleza.</p>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3938.8386491100155!2d-71.92902848537443!3d-13.530689890134848!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91051cb7ffdf5af7%3A0x4761d911845fb11d!2sTambo%20del%20Inca%2C%20A%20Luxury%20Collection%20Resort%20%26%20Spa!5e0!3m2!1ses!2spe!4v1698773122235!5m2!1ses!2spe" width="100%" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <a href="reserva.jsp" class="reserve-button">Reserva Ahora</a>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Hoteles en Cusco. Todos los derechos reservados.</p>
    </footer>
</body>
</html>

