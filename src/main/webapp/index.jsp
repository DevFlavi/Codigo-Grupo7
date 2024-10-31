<%@ page import="com.hotelweb.DatabaseConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Haven Resort</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
            font-size: 48px; 
            margin-bottom: 0;
            color: #f2c94c; 
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

        .intro {
            max-width: 1200px;
            margin: 20px auto;
            display: flex; 
            justify-content: center;
            flex-wrap: wrap; 
        }

        .bienvenida, .mision, .vision {
            width: 300px; 
            margin: 0; 
            padding: 30px; 
            background-color: rgba(255, 255, 255, 0.8); 
            border-radius: 10px; 
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        }

        .bienvenida h2,
        .mision h3,
        .vision h3 {
            margin: 10px 0;
            text-align: center; 
            color: #003366;
        }

        .bienvenida p,
        .mision p,
        .vision p {
            text-align: center;
            color: #666666;
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

        .calificaciones {
            max-width: 1200px;
            margin: 40px auto; 
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); 
            border-radius: 10px; 
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3); 
        }

        .calificacion {
            margin: 20px 0; 
            display: flex; 
            align-items: center; 
        }

        .avatar {
            width: 50px; 
            height: 50px; 
            border-radius: 50%; 
            margin-right: 20px; 
        }

        .estrellas {
            color: #f2c94c; 
            font-size: 20px; 
        }

        .social-icons {
            position: fixed; 
            bottom: 20px;
            right: 20px; 
            z-index: 1000; 
        }

        .social-icons i {
            font-size: 40px;
            margin-left: 10px; 
            color: rgb(202, 168, 168); 
            transition: color 0.3s;
        }

        .social-icons i:hover {
            color: #f2c94c; 
        }

        .faq {
            max-width: 1200px;
            margin: 40px auto; 
            padding: 20px;
            background-color: transparent;
            border-radius: 10px; 
            box-shadow: 0 0 0px rgba(0, 0, 0, 0.3); 
        }

        .faq-item {
            margin: 15px 0; 
            cursor: pointer; 
        }

        .faq-question {
            font-weight: bold; 
            background-color: transparent; 
            color: #003366;
        }

        .faq-answer {
            max-height: 0; 
            overflow: hidden; 
            transition: max-height 0.5s ease-in-out; 
            color: #003366; 
            padding: 0 10px; 
            border-radius: 5px; 
            background-color: transparent; 
            margin-top: 5px; 
        }

        .faq-answer.show {
            max-height: 100px; 
            padding: 10px; 
        }

    </style>
</head>
<body>
    <header>
        <img src="images/Palmeras.png" alt="Logo" class="logo">
        <h1>Haven Resort</h1>
    </header>

    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="destinos.jsp">Destinos</a></li> 
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
    </nav>

    <section class="intro">
        <div class="mision">
            <h3>Misión</h3>
            <p>Nuestra misión es proporcionar un servicio excepcional que garantice la satisfacción y el bienestar de nuestros huéspedes, creando experiencias memorables en un entorno cálido y acogedor.</p>
        </div>
        <div class="bienvenida">
            <h2>Bienvenido a Haven Resort</h2>
            <p>En Haven Resort, ofrecemos una experiencia única y relajante en un entorno tropical. Nuestro hotel veraniego está diseñado para brindarte el descanso que mereces, con instalaciones de primer nivel y un servicio excepcional.</p>
        </div>
        <div class="vision">
            <h3>Visión</h3>
            <p>Ser el destino preferido para quienes buscan un refugio de paz y diversión, donde cada visita se transforme en un recuerdo inolvidable, y ser reconocidos por nuestra hospitalidad y calidad de servicio.</p>
        </div>
    </section>

    <section class="calificaciones">
        <h2>Calificaciones de Nuestros Huéspedes</h2>
        <div class="calificacion">
            <img src="images/usuario1.jpg" alt="Usuario 1" class="avatar">
            <h4>Juan Pérez</h4>
            <div class="estrellas">
                ★★★★★
            </div>
            <p>Un lugar increíble para relajarse. El servicio fue excepcional y las instalaciones son de primera clase.</p>
        </div>
        <div class="calificacion">
            <img src="images/usuario2.jpg" alt="Usuario 2" class="avatar">
            <h4>María López</h4>
            <div class="estrellas">
                ★★★★☆
            </div>
            <p>La atención al cliente fue excelente. Definitivamente volveré.</p>
        </div>
        <div class="calificacion">
            <img src="images/usuario3.jpg" alt="Usuario 3" class="avatar">
            <h4>Carlos Sánchez</h4>
            <div class="estrellas">
                ★★★★★
            </div>
            <p>Me encantó la piscina y el ambiente relajante del hotel.</p>
        </div>
    </section>

    <section class="faq">
        <h2>Preguntas Frecuentes</h2>
        <div class="faq-item" onclick="toggleFAQ(this)">
            <div class="faq-question">¿Qué tipo de habitaciones ofrece el hotel?</div>
            <div class="faq-answer">Ofrecemos habitaciones estándar, suites y cabañas privadas, todas equipadas con comodidades modernas y vistas espectaculares.</div>
        </div>
        <div class="faq-item" onclick="toggleFAQ(this)">
            <div class="faq-question">¿Se permiten mascotas en el hotel?</div>
            <div class="faq-answer">Sí, permitimos mascotas pequeñas bajo ciertas condiciones. Por favor, consulta nuestra política de mascotas.</div>
        </div>
        <div class="faq-item" onclick="toggleFAQ(this)">
            <div class="faq-question">¿Cómo puedo hacer una reserva?</div>
            <div class="faq-answer">Puedes hacer una reserva a través de nuestro sitio web o llamando a nuestro número de atención al cliente.</div>
        </div>
    </section>

    <div class="social-icons">
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
    </div>

    <footer>
        <p>&copy; 2024 Haven Resort. Todos los derechos reservados.</p>
    </footer>

    <script>
        function toggleFAQ(element) {
            const answer = element.querySelector('.faq-answer');
            answer.classList.toggle('show');
        }
    </script>
</body>
</html>











