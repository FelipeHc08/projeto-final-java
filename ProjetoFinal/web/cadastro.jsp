<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Usuário</title>
    <style>
        
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;1,200&display=swap');

body {
    margin: 0;
}

.container_principal {
    display: flex;
    width: 100%;
    height: 100vh;
    justify-content: center;
    align-items: center; 
}

.red {
    height: 750px;
    display: flex;
    padding: 32px;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    flex: 1 0 0;
    align-self: stretch;
    background: #FF4949;
}

.red_content {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 40px;
    flex: 1 0 0;
    align-self: stretch;
}

.red_text {
    display: flex;
    flex-direction: column;
    align-self: stretch;
    color: #FFF;
    text-align: center;
    font-size: 40px;
    font-family: 'Poppins', sans-serif;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
}

form {
    width: 500px;
    display: flex;
    flex-direction: column;
    text-align: center;
    align-self: stretch;
    transform: translateX(25%);
}

input {
    margin: 5px 0;
    padding: 10px;
    border: 1px solid rgba(184, 184, 184, 0.705);
    border-radius: 0px;
    background-color: rgba(184, 184, 184, 0.705);
  
}

button {
    display: flex;
    width: 150px;
    padding: 16px;
    justify-content: center;
    align-items: center;
    border-radius: 40px;
    border: 1px solid #FFF;
    background-color: #FF4949;
    cursor: pointer;
    transform: translateX(115%) translateY(20px);
}

.button_text {
    display: flex;
    flex-direction: column;
    flex: 1 0 0;
    color: white;
    text-align: center;
    font-size: 14px;
    font-family: 'Poppins', sans-serif;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
}

.white {
    display: flex;
    padding: 32px;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    flex: 1 0 0;
    align-self: stretch;
    background: #FFFFFF;
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

.white_content {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 20px; /* Espaçamento entre os elementos */
    flex: 1 0 0;
    align-self: stretch;
}

.white_text {
    transform: translateY(-10px);
    display: flex;
    flex-direction: column;
    align-self: stretch;
    color: black;
    text-align: center;
    font-size: 40px;
    font-family: 'Poppins', sans-serif;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
}

        </style>
</head>
<body>
    <div class="container_principal">
        <div class="red">
            <div class="red_content">
                <div class="red_text">
                    <h1>Olá, amigo!</h1>
                    <p>Se cadastre em nosso site para se aventurar em nossas funcionalidades</p>
                </div>
            </div>
        </div>
        <div class="white">
            <div class="white_content">
                <div class="white_text">
                    <h1>Cadastro de Usuário</h1>
     
                    <form action="cadastroController.jsp" method="POST">
                        <input type="text" id="username" name="username" placeholder="Usuário" required>
                        <input type="password" id="password" name="password" placeholder="Senha" required>
                        <button type="submit" class="button_text">SIGN UP</button>
                    </form>
                </div>
            </div>
        </div>   
    </div>
</body>
</html>
