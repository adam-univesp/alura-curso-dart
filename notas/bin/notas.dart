import 'dart:io';

void main() {
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
