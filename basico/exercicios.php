    <?php
    //1
    // Crie uma variável para nome e outra para profissão
    // Escreva a mensagem "Fulano é tal_profissao"

    $nome = "Ana ";
    $job = "Desenvolvedora Mobile ";
    $mensagem = $nome . "é ". $job . "e foi promovida.";
    echo $mensagem;
    echo"<hr>";


    # 2
    // Crie uma variável senha e aramezene "senha123"
    // Verifique se a senha tem mais de 8 caracteres
    // Se sim, diga que a senha é válida. Se não, diga que é inválida

    $senha = "senha123";
    $valida = strlen($senha) > 8;
    
    if($valida){
        echo"senha é válida";
    }else{
        echo "senha é inválida";
    }
    echo "<hr>";


    # 3
    // Corrija a palavra "ExEmPlO" para que ela fique totalmente em minúsculo
 $palavra ="ExEmplo";
 $palavra_minuscula = strtolower($palavra);
 echo $palavra_minuscula;
 echo "<hr>";


    # 4
    // Corrija o link "  http://exemplo.com  " para que ele não tenha espaços inválidos
$urlAlterada = trim(" http://exemplo.com ");
echo $urlAlterada;
echo "<hr>";
 

    # 5
    // Inverta a string "abcd123" e encontre a posição do caractere "3" após a inversão
    $stringOriginal = "abcd123";
    $stringInvertida = strrev($stringOriginal);
    echo strpos($stringInvertida, "3");




    
    ?>