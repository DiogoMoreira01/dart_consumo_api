import 'dart:convert';

import 'package:consumo_api/models/curso.dart';
import 'package:consumo_api/models/endereco.dart';

class Aluno {
  String? id;
  String nome;
  int? idade;
  List<String> nomeCurso;
  Endereco endereco;
  List<Curso> cursos;

  Aluno({
    this.id,
    required this.nome,
    this.idade,
    required this.nomeCurso,
    required this.endereco,
    required this.cursos,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'nomeCurso': nomeCurso,
      'endereco': endereco.toMap(),
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      idade: map['idade'] ?? '',
      nomeCurso: List<String>.from(map['nomeCurso']),
      endereco: Endereco.fromMap(map['endereço']),
      cursos: map['cursos']
          .map<Curso>((cursoMap) => Curso.fromMap(cursoMap))
          .toList(),
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, nomeCurso: $nomeCurso, endereco: $endereco, cursos: $cursos)';
  }
}
