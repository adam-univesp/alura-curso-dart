import 'dart:io';

double soma(double a, double b) {
  return a + b;
}

double subtracao(double a, double b) {
  return a - b;
}

double multiplicacao(double a, double b) {
  return a * b;
}

double divisao(double a, double b) {
  return a / b;
}

double executaOperacao(String operacao, double a, double b) {
  switch (operacao) {
    case "+":
      return soma(a, b);

    case "-":
      return subtracao(a, b);

    case "*":
      return multiplicacao(a, b);

    case "/":
      return divisao(a, b);

    default:
      return 0;
  }
}

double leNumero() {
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      return double.parse(entrada);
    }
  }
  return 0;
}

String leOperacao() {
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      return entrada;
    }
  }
  return "+";
}

void main() {
  exercicio4();
  print("Digite o primeiro número:");
  double primeiroValor = leNumero();
  print("Digite a operação desejada [+, -, * ou /]:");
  String operacao = leOperacao();
  print("Digite o segundo número:");
  double segundoValor = leNumero();

  print("O resultado da operação $primeiroValor $operacao $segundoValor é:");
  double resultado = executaOperacao(operacao, primeiroValor, segundoValor);
  print(resultado);
}

/*
1) Calculando idade para carteira de motorista

Escreva um programa em Dart que verifica se uma pessoa pode ou não dirigir um veículo com base na sua idade. O programa deve solicitar ao usuário que digite sua idade e então informar, com uma mensagem, se ele pode dirigir ou não. Implemente o código para fazer essa verificação.
*/

void exercicio1() {
  print("1) Calculando idade para carteira de motorista");
  print("Informe sua idade:");
  int idade = int.parse(stdin.readLineSync()!);
  if (idade >= 18) {
    print("Parabéns, você pode dirigir!");
  } else {
    print("Você não pode Dirigir!");
  }
}

/*

2) Retornando os meses do ano

Desenvolva um programa em Dart que solicita ao usuário que digite um número de 1 a 12 e retorna o mês correspondente do ano. Por exemplo, ao digitar 2, o programa retorna a mensagem “Fevereiro”.
*/
void exercicio2() {
  print("\n\n2) Retornando os meses do ano");
  print("Digite um número de 1 a 12:");
  String valor = stdin.readLineSync()!;

  switch (valor) {
    case "1":
      print("Janeiro");
      break;

    case "2":
      print("Fevereiro");
      break;

    case "3":
      print("Março");
      break;

    case "4":
      print("Abril");
      break;

    case "5":
      print("Maio");
      break;

    case "6":
      print("Junho");
      break;

    case "7":
      print("Julho");
      break;

    case "8":
      print("Agosto");
      break;

    case "9":
      print("Setembro");
      break;

    case "10":
      print("Outubro");
      break;

    case "11":
      print("Novembro");
      break;

    case "12":
      print("Dezembro");
      break;

    default:
      print("valor Invalido");
      break;
  }
}

/*
3) Implementando a verificação de saldo

Você recebeu o seguinte trecho de código que, entre outras coisas, faz uma transferência Pix:

import 'dart:io';

double saldo = 1000.0; // Saldo inicial em reais

void main() {
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  print(saldo - valorPix);
}

A sua missão é criar uma estrutura condicional que limite as transferências, seguindo a lógica a seguir:

    Se houver saldo suficiente (o valor do Pix é igual ou menor ao saldo bancário): a operação é executada e o valor transferido é debitado do saldo;
    Se houver saldo insuficiente (o valor do pix é maior que o saldo): o programa exibe uma mensagem “Saldo insuficiente”.

Vamos lá?
*/
void exercicio3() {
  print("\n3) Implementando a verificação de saldo");
  double saldo = 1000.0; // Saldo inicial em reais
  void main() {
    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

    print('Digite o valor do Pix que deseja realizar:');
    double valorPix = double.parse(stdin.readLineSync()!);

    if (saldo > valorPix) {
      saldo = saldo - valorPix;
      print("Pix de R\$$valorPix realizado. Novo saldo de $saldo.");
    } else {
      print("Saldo insulficiente");
    }
  }

  main();
}

/*

4) Verificando a maioridade em diferentes países

Escreva um programa que verifica a maioridade para dirigir em diferentes países. O programa deve solicitar ao usuário que insira sua idade e o país em que ele se encontra (por exemplo, Brasil, EUA, Japão) e informar se ele pode dirigir ou não, com base na legislação de cada país.

Utilize as idades mínimas de 18 anos para o Brasil, 16 anos para os EUA e 20 anos para o Japão.*/

void exercicio4() {
  print("4) Verificando a maioridade em diferentes países");
  print("Favor entrar a sua idade:");
  int idade = int.parse(stdin.readLineSync()!);
  print("Favor entrar seu país:");
  String pais = stdin.readLineSync()!;

  switch (pais) {
    case "Brasil":
      idade >= 18 ? print("Pode dirigir") : print("Não pode dirigir");
      break;

    case "EUA":
      idade >= 16 ? print("Pode dirigir.") : print("Não pode dirigir!");
      break;

    case "Japão":
      idade >= 20 ? print("Pode dirigir") : print("Não pode dirigir");
      break;
  }
}
