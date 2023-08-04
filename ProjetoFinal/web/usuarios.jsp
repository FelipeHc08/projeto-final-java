<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/cadastro.css">
    <title>Sucesso no login</title>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;1,200&display=swap');

        body {
            margin: 0;
        }

        .container_principal {
            display: flex;
            width: 100%;
            height: 100%;
            justify-content: center;
            align-items: center;
        }

        .white {
            height: 750px;
            display: flex;
            padding: 32px;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            flex: 1 0 0;
            align-self: stretch;
            background: #ffffff;
        }

        .white_content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 40px;
            flex: 1 0 0;
            align-self: stretch;
        }

        .white_text {
            display: flex;
            flex-direction: column;
            align-self: stretch;
            color: #FF4949;
            text-align: center;
            font-size: 40px;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            
        }

        form {
            width: 50%;
            display: flex;
            flex-direction: column;
            text-align: center;
            align-self: stretch;
            transform: translateX(200px);
        }

       

        a {
            width: 10px;
            text-decoration: none;
            color: #333;
        }
        
        


        i {
            padding: 5px;
            border: 1px solid black;
            border-radius: 10px;

        }

       
    </style>
</head>
<body>
    <div class="container_principal">
        <div class="white">
            <div class="white_content">
                <div class="white_text">
                    <h1>Nossos usuários:</h1>
                    
                    <%-- Conexão com o banco de dados --%>
                    <% Connection conn = null;
                       Statement stmt = null;
                       ResultSet rs = null;
                       try {
                           // Estabelece uma conexão com o banco de dados
                           Class.forName("com.mysql.jdbc.Driver");
                           conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projeto", "root", "");
    
                           // Executa a consulta SQL para recuperar os usuários
                           String sql = "SELECT login FROM usuario";
                           stmt = conn.createStatement();
                           rs = stmt.executeQuery(sql);
    
                           // Itera sobre os resultados e exibe as informações dos usuários
                           while (rs.next()) {
                               String username = rs.getString("login");
                               out.println(username + "<br>");
                           }
                       } catch (Exception e) {
                           out.println("Ocorreu um erro: " + e.getMessage());
                       } finally {
                           // Fecha a conexão, o statement e o resultSet
                           if (rs != null) {
                               rs.close();
                           }
                           if (stmt != null) {
                               stmt.close();
                           }
                           if (conn != null) {
                               conn.close();
                           }
                       }
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
