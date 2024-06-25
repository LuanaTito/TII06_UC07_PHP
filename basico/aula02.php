<?php
echo "olá mundo! <br>";
echo "Olá mundo 2 <br>";

//concatenação em PHP
$nome = "João";
$sobrenome = "Silva";
$nome_completo = $nome . " " . $sobrenome;
echo $nome_completo;
echo "<br>";

#para obter o comprimento de um string em php, usamos o strlen()
$texto = "Olá mundo!";
echo strlen($texto);
echo "<br>";

//para substituir parte de uma string, usamos a função str_replace()
$texto = "O rato roeu a roupa";
$novo_texto = str_replace("rato", "gato", $texto);
echo $novo_texto;
echo "<br>";

echo $texto = "Olá mundo <br>";
$texto_minusculo = strtolower($texto);
$texto_maiusculo = strtoupper($texto);
echo $texto_minusculo;
echo $texto_maiusculo;

//trim -> Remove espaços em branco no inicio e no final de uma string.
$texto_sem_espacos = trim($texto);
echo strlen($texto_sem_espacos);
echo $texto_sem_espacos;
echo "<hr>";

//strpos - Encontra a primeira posiçao de uma string especifica.
$lista_alunos = "João, Maria, Fernando, Natalia, José";
$posicao_maria = strpos($lista_alunos, "Maria");
echo "A posição da Maria é: " .  $posicao_maria;
echo "<hr>";

$texto = "Socorram me subi no onibus em marrocos";
$texto_invertido = strrev($texto);
echo $texto_invertido;


