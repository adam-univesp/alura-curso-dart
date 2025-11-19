import "dart:io";

void main() {
  print("Digite o primeiro Valor!");
  double primeiroValor = double.parse(stdin.readLineSync()!);
  print("Digite o Segundo Valor!");
  double segundoValor = double.parse(stdin.readLineSync()!);

  void soma() {
    print(primeiroValor + segundoValor);
  }

  void subtracao() {
    print(primeiroValor - segundoValor);
  }

  void multiplicacao() {
    print(primeiroValor * segundoValor);
  }

  void divisao() {
    print(primeiroValor / segundoValor);
  }

  soma();
  subtracao();
  divisao();
  multiplicacao();

  print("//////////////////////////////");
  print("exercício");
  print("");

  // exercicio 1
  print("\n\nExercício 1");
  print("Digite um número!");
  int valor = int.parse(stdin.readLineSync()!);
  int dobro = valor * 2;
  print("O dobro de $valor é $dobro.");

  //Exercício 2
  print('\n\nExercício 2.');
  print("Digite a idade da primeira pessoa!");
  int idadeUm = int.parse(stdin.readLineSync()!);
  print("Digite a idade da segunda pessoa");
  int idadeDois = int.parse(stdin.readLineSync()!);
  print("Digite a idade da terceira pessoa!");
  int idadeTres = int.parse(stdin.readLineSync()!);
  double media = (idadeUm + idadeDois + idadeTres) / 3;

  print("A média das idades é: $media.");
  /*
  3) Escrevendo a ficha de participante

    Desenvolva um programa que exibe uma pequena “ficha” com informações suas, utilizando os conhecimentos do Dart! As informações da ficha são:

    Nome;
    CPF;
    Idade;
    Altura;
    Participo da comunidade?

    Declare esses dados dentro da variável e depois imprima-os no terminal. 
  */
  print("\n\nExercicio 3) Escrevendo a ficha de participantes");
  String nome = "Adam";
  String cpf = "111.222.333-44";
  int idade = 38;
  double altura = 1.78;
  bool participaComunidade = true;

  print("Eu sou o $nome,");
  print("meu CPF é $cpf");
  print("sou membro da comunidade $participaComunidade");
  print("Eu tenho $altura metros e $idade anos");

  /*
  4) Calculando o salário do freela

  Você foi contratado para um trabalho freelance. Crie um programa que lê as horas trabalhadas e calcula o salário líquido, considerando:

      A empresa paga 50 reais por hora trabalhada;
      O desconto do salário é de 5% e deve ser subtraído do salário bruto.

  Veja um exemplo de como o programa deve ficar no terminal:
  */
  print("\n\n4) Calculando o salário do freela.");
  print("Digite o número de horas trabalhadas.");
  int horas = int.parse(stdin.readLineSync()!);
  double salarioLiquido = (50 * horas) * (100 - 5) / 100;
  print("O salário líquido é R\$ $salarioLiquido.");
  /*
  5) Consertando erros em um programa

  Você está trabalhando em um programa de banco, que faz três ações:

      Mostrar o saldo bancário do usuário;
      Permitir que o usuário faça uma transferência pix (de forma simplificada);
      Subtrair o valor do pix do valor de saldo.

  No entanto, o código possui erros. Analise-o com atenção:
  */
  print("\n\n5) Consertando erros em um programa");

  void exercicio5() {
    double saldo = 1000.0; // Saldo inicial em reais

    void main() {
      print('Boas-vindas ao seu banco digital!');
      print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

      print('Digite o valor do Pix que deseja realizar:');
      double valorPix = double.parse(stdin.readLineSync()!);

      saldo -= valorPix;

      print('Pix realizado com sucesso!');
      print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
    }

    main();
  }

  exercicio5();

  /*
  6) Identificando e corrigindo tipos no Dart

  Chegou nas suas mãos um programa de retirada de pontos de um clube de benefícios.

  A lógica deve ser a seguinte:

      Os pontos iniciais começam no valor 100;
      O programa inicia com uma mensagem: “*Você tem [x] pontos.*”;
      Em seguida, exibe a mensagem: “*Quantos pontos você gostaria de resgatar?*”;
      O usuário digita quantos [y] pontos deseja retirar;
      O programa faz uma subtração (pontos iniciais [100] - pontos retirados [y]);
      Por fim, mostra uma mensagem que informa: “Você resgatou [y] pontos. Pontos restantes: [z].””
  */
  print("\n\n Exercicio 6) Identificando e corrigindo tipos no Dart");

  void exercicio6() {
    double pontosIniciais = 100;
    double pontosRetirados;

    print("Você tem $pontosIniciais pontos.");
    print("Quantos pontos você gostaria de resgatar?");
    pontosRetirados = double.parse(stdin.readLineSync()!);

    double pontosRestantes = pontosIniciais - pontosRetirados;

    print(
      "Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.",
    );
  }

  exercicio6();
  /*
  7) Refatorando o código do clube de benefícios com função

  Se você resolveu o exercício anterior, agora refatore (modifique) o código, colocando a funcionalidade de subtração de pontos dentro de uma função. 
  */
  print(
    "\n\n Exercicio 7) Refatorando o código do clube de benefícios com função",
  );
  void exercicio7() {
    double pontosIniciais = 100;
    double pontosRetirados;

    print("Você tem $pontosIniciais pontos.");
    print("Quantos pontos você gostaria de resgatar?");

    pontosRetirados = double.parse(stdin.readLineSync()!);
    void removePontos() {
      pontosIniciais = pontosIniciais - pontosRetirados;
    }

    removePontos();
    print(
      "Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosIniciais.",
    );
  }

  exercicio7();

  /*
  8) Implementando um programa de cupons

  Escreva um programa que informa quantos cupons um cliente ganhou ao fazer compras no mercado No Precinho. A regra da promoção é: a cada 50 reais gastos por compra, a pessoa recebe um cupom. O programa deve:

      Capturar a entrada com o valor gasto;
      Exibir mensagem de quantos cupons foram ganhos.*/
  print("\n\n Exercicio 8) Implementando um programa de cupons");

  print("Digite o Valor gasto nas compras!");
  double valorGasto = double.parse(stdin.readLineSync()!);
  double numeroCupons = valorGasto / 50;

  print("Foram ganhos ${numeroCupons.floor()} cupons.");
}
