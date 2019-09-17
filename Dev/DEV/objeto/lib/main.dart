import 'package:objeto/src/pessoa.dart';

main(List<String> arguments) {
  Pessoa pessoa = Pessoa(nome: "Jacob", idade: 27, sexo: "M");
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);

  print(pessoa.peso);
  print(pessoa.altura);
}