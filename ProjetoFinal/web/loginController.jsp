<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Controle de Login</title>
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
    
           // Verifica se as credenciais são válidas
           String sql = "SELECT * FROM usuario WHERE login = ? AND senha = ?";
           stmt = conn.prepareStatement(sql);
           stmt.setString(1, username);
           stmt.setString(2, password);
           ResultSet rs = stmt.executeQuery();
    
           if (rs.next()) {
               // Login bem-sucedido, redireciona para uma página de sucesso
               response.sendRedirect("sucessoLogin.jsp");
           } else {
               // Credenciais inválidas, redireciona para uma página de erro
               response.sendRedirect("erroLogin.jsp");
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
