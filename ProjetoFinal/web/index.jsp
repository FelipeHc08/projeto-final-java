<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/cadastro.css">
    <title>Página Inicial</title>
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
            width: 50%;
            display: flex;
            flex-direction: column;
            text-align: center;
            align-self: stretch;
            transform: translateX(200px);
        }

        input {
            margin: 5px;
            padding: 10px;
            border: 1px solid rgba(184, 184, 184, 0.705);
            border-radius: 0px;
            background-color: rgba(184, 184, 184, 0.705);
        }

        button {
            display: flex;
            width: 275px;
            padding: 16px;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            border: 1px solid #FFF;
            background-color: #FF4949;
            cursor: pointer;
            transform: translateX(0%) translateY(20px);
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

   
        .list-unstyled li{
        list-style-type: none;
        }

        .button {

            display: inline-block;
            padding: 10px 20px;
            border-radius: 50px;
            background-color: rgb(255, 255, 255);
            color: #FF4949;
            font-size: 30px;
            text-decoration: none;
            cursor: pointer;
        }
        .sublinhado {
  text-decoration: underline;
}

    </style>
</head>
<body>
    <div class="container_principal">
        <div class="red">
            <div class="red_content">
                <div class="red_text">
                    <h1>Bem-vindo à Página Inicial</h1>
                    <h2>Escolha uma opção:</h2>
                    <ul class="list-unstyled">
                        <li><button class="button" onclick="window.location.href='login.jsp'">Fazer Login</button></li><br>
                        <li><button class="button" onclick="window.location.href='cadastro.jsp'">Cadastrar-se</button></li><br>                        
                        <a href="usuarios.jsp" class="sublinhado">Junte-se aos nossos usuários!</a>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</body>
</html>