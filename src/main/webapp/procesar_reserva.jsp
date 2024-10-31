<%@page import="com.hotelweb.DatabaseConnection"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva Procesada</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgba(240, 240, 240, 0.9);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 30px;
            text-align: center;
            width: 100%;
            max-width: 500px;
        }
        h2 {
            color: rgb(202, 168, 168);
            margin-bottom: 20px;
        }
        .message {
            font-size: 1.2em;
            margin: 20px 0;
        }
        .back-button {
            background-color: rgb(202, 168, 168);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .back-button:hover {
            background-color: rgba(202, 168, 168, 0.8);
        }
    </style>
</head>
<body>
    <div class="container">
<%
    String nombres = request.getParameter("nombres");
    String apellidos = request.getParameter("apellidos");
    String dni = request.getParameter("dni");
    String hotelId = request.getParameter("hotel");
    int noches = Integer.parseInt(request.getParameter("noches"));
    int personas = Integer.parseInt(request.getParameter("personas"));

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        
        conn = DatabaseConnection.getConnection();

        
        if (conn == null) {
            out.println("<div class='message'><h2>Error: No se pudo establecer conexión a la base de datos.</h2></div>");
        } else {
           
            String sql = "INSERT INTO reservas (nombres, apellidos, dni, hotel, noches, personas) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, nombres);
            pstmt.setString(2, apellidos);
            pstmt.setString(3, dni);
            pstmt.setString(4, hotelId);
            pstmt.setInt(5, noches);
            pstmt.setInt(6, personas);

           
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                out.println("<div class='message'><h2>Reserva guardada con éxito.</h2></div>");
            } else {
                out.println("<div class='message'><h2>Error al guardar la reserva.</h2></div>");
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<div class='message'><h2>Error de conexión a la base de datos: " + e.getMessage() + "</h2></div>");
    } finally {
        
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
        <button class="back-button" onclick="window.location.href='index.jsp'">Regresar al Inicio</button>
    </div>
</body>
</html>




