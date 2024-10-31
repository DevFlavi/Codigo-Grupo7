<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicios Adicionales</title>
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
            background-image: url('images/FondoHotel.jpg'); 
            background-size: cover;
            background-position: center;
            color: white; 
        }
        nav {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 15px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            text-align: center; 
        }
        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }
        .logo-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 20px 0; 
            margin-top: 100px; 
        }
        .logo {
            width: 50px; 
            margin-right: 10px; 
        }
        .title {
            font-size: 2.5em; 
            color: rgb(202, 168, 168); 
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 30px;
            max-width: 800px;
            margin: 20px auto; 
            margin-top: 20px;
        }
        h2 {
            text-align: center;
            color: rgb(0, 0, 0); 
        }
        .service {
            margin: 20px 0;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }
        .service:last-child {
            border-bottom: none;
        }
        .service-title {
            font-weight: bold;
            font-size: 1.2em;
            color: rgb(120, 120, 120);
        }
        .service-description {
            margin-top: 5px;
            color: #666;
        }
    </style>
</head>
<body>

    <div class="logo-container">
        <img src="images/Palmeras.png" alt="Logo Heaven Resort" class="logo"> 
        <div class="title">Heaven Resort</div>
    </div>

    <nav>
        <a href="index.jsp">Inicio</a>
        <a href="destinoss.jsp">Destinos</a>
        <a href="servicios.jsp">Servicios</a>
        <a href="contacto.jsp">Contacto</a>
    </nav>

    <div class="container">
        <h2>Servicios Adicionales</h2>
        <div class="service">
            <div class="service-title">Desayuno Incluido</div>
            <div class="service-description">Disfruta de un delicioso desayuno buffet cada mañana, con opciones variadas para todos los gustos.</div>
        </div>
        <div class="service">
            <div class="service-title">Servicio de Limpieza Diario</div>
            <div class="service-description">Nuestro equipo de limpieza garantiza que tu habitación esté siempre impecable y lista para tu comodidad.</div>
        </div>
        <div class="service">
            <div class="service-title">Wi-Fi Gratuito</div>
            <div class="service-description">Conéctate sin problemas con nuestra red Wi-Fi de alta velocidad disponible en todas las áreas del hotel.</div>
        </div>
        <div class="service">
            <div class="service-title">Transporte al Aeropuerto</div>
            <div class="service-description">Ofrecemos servicio de transporte desde y hacia el aeropuerto para que tu llegada y salida sean cómodas.</div>
        </div>
        <div class="service">
            <div class="service-title">Gimnasio y Spa</div>
            <div class="service-description">Relájate y mantente en forma con nuestras instalaciones de gimnasio y spa disponibles para todos los huéspedes.</div>
        </div>
        <div class="service">
            <div class="service-title">Servicio de Concierge</div>
            <div class="service-description">Nuestro concierge está disponible para ayudarte con reservas, recomendaciones y cualquier consulta que tengas.</div>
        </div>
    </div>
</body>
</html>


