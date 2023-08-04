<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/cadastro.css">
    <title>Erro no Login</title>
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
        <div class="red">
            <div class="red_content">
                <div class="red_text">
                    <h1>Nome ou senha incorretas! Tente novamente!</h1>
                </div>
            </div>
        </div>

    </div>
</body>
</html>