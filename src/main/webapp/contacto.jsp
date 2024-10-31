<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto - Haven Resort</title>
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

        header .logo {
            width: 80px;
        }

        header h1 {
            font-size: 36px;
            color: #fff; 
            margin: 0;
        }

        header img {
            max-width: 80px; 
            height: auto; 
            margin-bottom: 10px;
        }

        
        nav {
            background-color: rgba(14, 12, 12, 0.8);
            padding: 10px 0;
            width: 100%;
            text-align: center;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            font-weight: bold;
        }

        nav ul li a:hover {
            background-color: #555;
        }

       
        .contacto-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            max-width: 500px;
            width: 90%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin: 30px auto; 
        }

        
        .contacto-container h2 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
            box-sizing: border-box;
        }

        .form-group textarea {
            resize: vertical;
        }

        .submit-btn {
            padding: 12px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 10px;
        }

        .submit-btn:hover {
            background-color: #555;
        }

        
        .map-container {
            margin: 30px auto; 
            width: 100%;
            max-width: 500px;
            height: 400px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        
        .flex-container {
            display: flex;
            flex-direction: column; 
            align-items: center; 
        }
    </style>
</head>
<body>
  
    <header>
        <img src="images/Palmeras.png" alt="Haven Resort"> <!-- Cambia la ruta por la del logo -->
        <h1>Haven Resort - Contáctanos</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="destinos.jsp">Destinos</a></li>
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
    </nav>

    
    <div class="flex-container">
        <div class="contacto-container">
            <h2>Envíanos un mensaje</h2>
            <form action="EnviarContactoServlet" method="POST">
                <div class="form-group">
                    <label for="nombre">Nombre Completo</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                <div class="form-group">
                    <label for="email">Correo Electrónico</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="mensaje">Mensaje</label>
                    <textarea id="mensaje" name="mensaje" rows="4" required></textarea>
                </div>
                <button type="submit" class="submit-btn">Enviar Mensaje</button>
            </form>
        </div>

        
        <div class="map-container">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3900.610140618567!2d-77.0427543846273!3d-12.046374791444912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8cf935d9c27%3A0x119f2f8d15a4b5cd!2sPlaza%20San%20Mart%C3%ADn!5e0!3m2!1ses!2spe!4v1698247363607!5m2!1ses!2spe"
                width="100%"
                height="100%"
                style="border:0;"
                allowfullscreen=""
                loading="lazy"
                referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>
    </div>
</body>
</html>









