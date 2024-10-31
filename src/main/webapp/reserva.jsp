<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva de Hotel</title>
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
            background-image: url('images/FondoHotel.jpg'); 
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: rgba(240, 240, 240, 0.9);
            color: rgb(202, 168, 168);
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 90%;
            max-width: 500px;
            text-align: center; /* Centrar texto */
        }

        h2 {
            margin-bottom: 20px;
        }

        label {
            display: block; 
            margin: 10px 0 5px;
            font-weight: bold; 
            text-align: left; 
        }

        input, select {
            width: calc(100% - 20px); 
            padding: 10px;
            margin: 10px 0;
            border: 1px solid rgb(202, 168, 168);
            border-radius: 5px;
            font-size: 16px;   
            transition: border-color 0.3s, box-shadow 0.3s; 
            box-sizing: border-box; 
        }

        input:focus {
            border-color: rgb(202, 168, 168);
            box-shadow: 0 0 5px rgba(202, 168, 168, 0.5); 
            outline: none; 
        }

        button {
            background-color: rgb(202, 168, 168);
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            width: 100%;
            transition: background-color 0.3s; 
        }

        button:hover {
            background-color: rgba(202, 168, 168, 0.8);
        }

        .back-button {
            margin-top: 15px;
            background-color: transparent;
            border: none;
            text-decoration: underline;
            color: rgb(202, 168, 168);
            cursor: pointer;
            transition: color 0.3s; 
        }

        .back-button:hover {
            color: rgba(202, 168, 168, 0.8);
        }

        
        .error-message {
            color: red;
            font-size: 0.9em;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Formulario de Reserva</h2>
        <form action="procesar_reserva.jsp" method="post"> 
            <label for="nombres">Nombres:</label>
            <input type="text" id="nombres" name="nombres" placeholder="" required>

            <label for="apellidos">Apellidos:</label>
            <input type="text" id="apellidos" name="apellidos" placeholder="" required>

            <label for="dni">DNI:</label>
            <input type="text" id="dni" name="dni" placeholder="" required pattern="\d{8}" title="DNI debe tener 8 dígitos.">

            <label for="hotel">Selecciona un hotel:</label>
            <select id="hotel" name="hotel" required>
                <option value="">Seleccione un hotel</option>
                <option value="Plaza Mayor de Lima">Plaza Mayor de Lima</option>
                <option value="Parque Kennedy">Parque Kennedy</option>
                <option value="Malecón de Miraflores">Malecón de Miraflores</option>
                <option value="Museo de Arte de Lima">Museo de Arte de Lima</option>
                <option value="Hotel de Pueblo Libre">Hotel de Pueblo Libre</option>
                <option value="Hotel San Agustín">Hotel San Agustín</option>
                <option value="Cusco Premium Hotel">Cusco Premium Hotel</option>
                <option value="Marriott Cusco">Marriott Cusco</option>
                <option value="Tambo del Inca">Tambo del Inca</option>
                <option value="El Cabildo">El Cabildo</option>
                <option value="Posada del Monasterio">Posada del Monasterio</option>
                <option value="Casa Andina Arequipeña">Casa Andina Arequipeña</option>
                <option value="Sonesta Arequipa">Sonesta Arequipa</option>
                <option value="Soleil Lambayeque">Soleil Lambayeque</option>
                <option value="Enigma Hotel">Enigma Hotel</option>
            </select>

            <label for="noches">Número de Noches:</label>
            <input type="number" id="noches" name="noches" placeholder="" min="1" required>

            <label for="personas">Número de Personas:</label>
            <input type="number" id="personas" name="personas" placeholder="" min="1" required>

            <button type="submit">Enviar Reserva</button>
        </form>
        <button class="back-button" onclick="window.location.href='index.jsp'">Regresar al Inicio</button>
    </div>
</body>
</html>


