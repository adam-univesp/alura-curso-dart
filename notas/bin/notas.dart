import 'dart:io';

void main() {
  aula5Exercicio3();
  List<String> notas = <String>[];
  getComando();
  adicionaNota(notas);
  adicionaNota(notas);
  adicionaNota(notas);
  adicionaNota(notas);
  listarNotas(notas);
}

String getComando() {
  print("Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada = stdin.readLineSync();

  if (!comandos.contains(entrada)) {
    print("Comando invalido");
    return getComando();
  }

  return entrada!;
}

List<String> adicionaNota(List<String> notas) {
  print("Escreva uma Nota");
  String? nota = stdin.readLineSync();
  if (nota == null || nota == "") {
    print("Não é possível adicionar nota");
    return adicionaNota(notas);
  }
  notas.add(nota);
  return notas;
}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

/*
Aula 5 exercicios.
1) Imprimindo números no terminal

Imprima, no console, os números de 1 a 5 com o laço for.

O resultado esperado no console é o seguinte:

1
2
3
4
5

*/
void aula5exercicio1() {
  print("1) Imprimindo números no terminal");
  for (var i = 1; i <= 5; i++) {
    print(i);
  }
}

/*

Vamos lá?
2) Mostrando nomes no terminal

Crie uma lista de nomes que é exibida no terminal com o for. Os nomes podem ser: Ana, João e Maria.

O resultado esperado no terminal é o seguinte:

Nome: Ana
Nome: João
Nome: Maria
*/
void aula5Exercicio2() {
  print("2) Mostrando nomes no terminal");
  List<String> nomes = <String>["Ana", "João", "Maria"];
  for (var i = 0; i < nomes.length; i++) {
    print("Nome: ${nomes[i]}");
  }
}
/*
3) Em busca da parada

Escreva um programa que imprime letras de uma frase “Parou! Este código não continua.” A ideia é que o código pare na primeira letra “!” encontrada.
*/

void aula5Exercicio3() {
  print("3) Em busca da parada");
  String frase = "Parou! Este código não continua.";

  for (var i = 0; i < frase.length; i++) {
    print(frase[i]);
    if (frase[i] == "!") {
      break;
    }
  }
}
