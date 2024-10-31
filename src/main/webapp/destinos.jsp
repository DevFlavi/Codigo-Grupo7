<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Destinos - Haven Resort</title>
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

        header h1 {
            
            font-size: 36px;
            margin-bottom: 0;
        }

        .hotel-container {
            display: flex; 
            flex-wrap: wrap; 
            justify-content: center; 
            padding: 20px; 
            margin-top: 20px; 
            background-color: rgba(255, 255, 255, 0.9); 
            border-radius: 12px; 
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .hotel-card {
            background: rgba(240, 240, 240, 0.8); 
            border: none; 
            border-radius: 12px; 
            margin: 15px; 
            padding: 15px; 
            width: 350px;
            height: 400px; 
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            overflow: hidden; 
            transition: transform 0.3s, box-shadow 0.3s; 
        }

        .hotel-card img {
            width: 100%; 
            height: 200px; 
            object-fit: cover; 
            border-radius: 12px 12px 0 0; 
            transition: filter 0.3s; 
        }

        .hotel-card:hover img {
            filter: brightness(0.8);
        }

        .hotel-card h3 {
            font-size: 22px; 
            margin: 10px 0;
            color: #333; 
        }

        .hotel-card p {
            font-size: 16px; 
            color: #666; 
        }

        .hotel-card a {
            text-decoration: none; 
            color: #fff; 
            background-color: #c49a6a; 
            padding: 10px 15px; 
            border-radius: 5px; 
            display: inline-block; 
            transition: background-color 0.3s; 
            margin-top: 10px; 
        }

        .hotel-card a:hover {
            background-color: #a67848; 
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
    </style>
</head>
<body>
    <header>
        <h1>Destinos - Haven Resort</h1>
    </header>

    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="destinos.jsp">Destinos</a></li>
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
    </nav>

    <div class="hotel-container">
        <div class="hotel-card">
            <a href="mas_hoteles_lima.jsp">
                <img src="images/Hotel.jpg" alt="Hotel 1">
                <h3>Lima</h3>
                <p>Un hermoso hotel junto a la playa con todas las comodidades.</p>
            </a>
        </div>
        <div class="hotel-card">
            <a href="mas_hoteles_cusco.jsp">
                <img src="images/Hotel2.jpg" alt="Hotel 2">
                <h3>Cusco</h3>
                <p>Relájate en este hotel de montaña rodeado de naturaleza.</p>
            </a>
        </div>
        <div class="hotel-card">
            <a href="mas_hoteles_arequipa.jsp">
                <img src="images/Hotel3.jpg" alt="Hotel 3">
                <h3>Arequipa</h3>
                <p>Descubre la ciudad desde este moderno hotel en el centro.</p>
            </a>
        </div>
        <div class="hotel-card">
            <a href="mas_hoteles_lambayeque.jsp">
                <img src="images/Hotel4.jpg" alt="Hotel 4"> 
                <h3>Lambayeque</h3>
                <p>Descubre la ciudad desde este moderno hotel en el centro.</p>
            </a>
        </div>
        
    </div>

    <footer>
        <p>&copy; 2024 Haven Resort. Todos los derechos reservados.</p>
    </footer>
</body>
</html>




    
