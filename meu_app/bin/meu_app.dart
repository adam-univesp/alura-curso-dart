import "dart:io";

void main() {
  print('Olá me chamo Dart, Qual o seu nome?');
  var entrada = stdin.readLineSync();
  print("Muito prazer $entrada, vamos fazer vários programas juntos!");
}
