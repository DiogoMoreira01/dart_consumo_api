import 'package:consumo_api/models/curso.dart';
import 'package:consumo_api/models/endereco.dart';

class Aluno {
  String id;
  String nome;
  int idade;
  List<String> nomeCurso;
  Endereco endereco;
  List<Curso> cursos;

  Aluno({
    required this.id,
    required this.nome,
    required this.idade,
    required this.nomeCurso,
    required this.endereco,
    required this.cursos,
    });
}
