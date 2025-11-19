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
