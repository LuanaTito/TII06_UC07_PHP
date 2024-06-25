<?php
/*   
    Exercício 1 - Índice de Massa Corporal (IMC):
    Solicite ao usuário que insira sua altura (em metros) e peso (em quilogramas). Calcule o IMC usando a fórmula IMC = peso / (altura * altura). Exiba o resultado e informe se o usuário está abaixo do peso, com peso normal, com sobrepeso ou obeso, com base nos intervalos de IMC padrão.

    Exercício 2 - Verificação de Pagamento:
    Pergunte ao usuário se ele tem saldo na conta (booleano). 
    Se tiver, pergunte se ele deseja fazer uma compra. 
    Se a resposta for afirmativa, peça ao usuário para inserir o valor da compra (float). 
    Verifique se o valor da compra é menor ou igual ao saldo disponível e informe se a transação foi concluída com sucesso ou se o saldo é insuficiente.

    Exercício 3 - Conversor de Temperatura:
    Solicite ao usuário que insira uma temperatura em Celsius (float). Converta essa temperatura para Fahrenheit usando a fórmula: Fahrenheit = (Celsius * 9/5) + 32. Exiba o resultado da conversão.

    Exercício 4 - Verificação de Acesso:
    Pergunte ao usuário se ele é maior de idade (booleano). 
        Se ele for maior de idade, pergunte se ele possui autorização dos pais (booleano). 
    Com base nas respostas, determine se o usuário tem acesso ao conteúdo restrito.

    Desafio: Verificação de Números Primos:
    Peça ao usuário que insira um número inteiro (int) e verifique se ele é um número primo. Use um booleano para indicar se o número é primo ou não.

    PS.: Ao invés de solicitar ao usuário de fato, pode declarar uma variável com o valor diretamente no código.
    EX: $altura = 1.75;
*/

# 1 - IMC = peso / (altura * altura)
$altura = 1.81;
$peso = 79.3;

$imc = $peso / ($altura * $altura);
echo "1. Seu IMC é: $imc <br>";

if($imc < 18.5) {
    echo "Você está abaixo do peso. <br>";
} elseif ($imc >= 18.5 && $imc < 25) {
    echo "Você está no seu peso ideal. <br>";
} elseif ($imc >= 25 && $imc < 30) {
    echo "Você está com sobrepeso. <br>";
} else {
    echo "Você está obeso. <br>";
}

# 2 - Verificação de Pagamento
$tem_saldo = true;
if($tem_saldo) {
    $fazer_compra = true;
    if($fazer_compra) {
        $saldo_disponivel = 500.00;
        $valor_compra = 350.00;
        if($valor_compra <= $saldo_disponivel) {
            echo "Transação concluída com sucesso! <br>";
        } else {
            echo "Saldo insuficiente para a compra! <br>";
        }
    } else {
        echo "Obrigado, tenha um bom dia. <br>";
    }
} else {
    echo "Sem saldo, impossível realizar a venda. <br>";
}

# 3 - Conversor de Temperatura
$temperatura_celsius = 20.0;
$temperatura_fahrenheit = ($temperatura_celsius * 9/5) + 32;

echo "Temperatura em Fahrenheit é: $temperatura_fahrenheit F <br>"; 

# 4 - Verificação de acesso
$maior_idade = false;
$autorizacao_pais = false;
if($maior_idade || $autorizacao_pais) {
    echo "Acesso concedido ao conteúdo restrito. <br>";
} else {
    echo "Acesso negado. <br>";
}