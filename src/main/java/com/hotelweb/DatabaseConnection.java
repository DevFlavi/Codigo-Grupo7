package com.hotelweb;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class DatabaseConnection {

    private static DataSource dataSource;

    static {
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            dataSource = (DataSource) envContext.lookup("jdbc/hotelDB");
        } catch (NamingException e) {
            e.printStackTrace();
            throw new ExceptionInInitializerError("Error al inicializar la conexión a la base de datos.");
        }
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }
}






