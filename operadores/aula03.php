<?php
//número e operadores

$num1 = 10;
$num2 = 5;

$soma = $num1 + $num2;
$subtracao = $num1 - $num2;
$multiplicacao = $num1 * $num2;
$divisao = $num1 / $num2;

//Operações Incrementais e decrementais. 

$num = 8;
$num++;
echo "incremento: $num <hr>";
$num--;
echo "decremento: $num <hr>";

//operadores de Comparação
$num1 = 4;
$num2 = 4;

echo "Igual a: ";
if($num1 == $num2){
    echo "verdadeiro <hr>";
} else {
    echo "falso <hr>";
}

$resultado = $num1 == $num2;
echo"Igual a: $resultado <hr>";

echo "Igual a: ";
echo $num1 == $num2 ? "verdadeiro <hr>" : "falso<hr>";

//Diferente de.. 
echo "Diferente de: ";
echo $num1 != $num2 ? "verdadeiro <hr>" : "falso<hr>";

//Maior que.. 
echo "Maior que: ";
echo $num1 > $num2 ? "verdadeiro <hr>" : "falso <hr>";

//Menor ou igual a.. 
echo "Menor ou igual a: ";
echo $num1 <= $num2 ? "verdadeiro <hr>" : "falso <hr>";

//Operadores Lógicos
$condicao1 = true;
$condicao2 = false;

//Logico e (AND)
echo "E lógico: ";
echo $condicao1 && $condicao2 ? "verdadeiro <hr>" : "falso <hr>";

//Logico OU (OR)
echo "OU lógico: ";
echo $condicao1 || $condicao2 ? "verdadeiro <hr>" : "falso <hr>";

//Não Lógico (NOT)
echo "Não lógico: ";
echo !$condicao2 ? "verdadeiro <hr>" : "falso <hr>";

//Opreradores com Booleanos
$tem_idade = true; 
$tem_cartao = false; 

$pode_entrar = $tem_idade && $tem_cartao;
echo "Pode entrar na festa: " . ($pode_entrar ? "SIM" : "NÃO"). "<hr>";

//Operador OR
$tem_passaporte = true; 
$tem_visto = false; 

$pode_viajar = $tem_passaporte || $tem_visto;
echo "Pode viajar para o exterior: " . ($pode_viajar ? "SIM" : "NÃO"). "<hr>";

// Números Decimais (Floats)
$altura = 1.80;
$peso = 75.5;

$IMC = $peso / ($altura * $altura);
echo "Seu IMC é: ". $IMC;






?>