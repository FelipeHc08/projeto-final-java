<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Controle de Cadastro</title>
</head>
<body>
    <%-- Recupera as informações enviadas pelo formulário --%>
    <% String username = request.getParameter("username");
       String password = request.getParameter("password");
    
       Connection conn = null;
       PreparedStatement stmt = null;
    
       try {
           // Estabelece uma conexão com o banco de dados
           Class.forName("com.mysql.jdbc.Driver");
           conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projeto", "root", "");
    
           // Verifica se o usuário já existe no banco de dados
           String sqlCheck = "SELECT * FROM usuario WHERE login = ?";
           stmt = conn.prepareStatement(sqlCheck);
           stmt.setString(1, username);
           ResultSet rs = stmt.executeQuery();
    
           if (rs.next()) {
               // Usuário já existe, redireciona para uma página de erro
               response.sendRedirect("erroCadastro.jsp");
             
           } else {
               // Insere o novo usuário no banco de dados
               String sqlInsert = "INSERT INTO usuario (login, senha) VALUES (?, ?)";
               stmt = conn.prepareStatement(sqlInsert);
               stmt.setString(1, username);
               stmt.setString(2, password);
               stmt.executeUpdate();
    
               // Redireciona para uma página de sucesso
               response.sendRedirect("sucessoCadastro.jsp");
           }
       } catch (Exception e) {
           // Trata os erros
           out.println("Ocorreu um erro: " + e.getMessage());
       } finally {
           // Fecha a conexão e o statement
           if (stmt != null) {
               stmt.close();
           }
           if (conn != null) {
               conn.close();
           }
       }
    %>
</body>
</html>