import 'package:consumo_api/models/aluno.dart';
import 'package:consumo_api/models/cidade.dart';
import 'package:consumo_api/models/curso.dart';
import 'package:consumo_api/models/endereco.dart';
import 'package:consumo_api/models/telefone.dart';
import 'package:consumo_api/repository/alunos_repository.dart';

class AlunoController {
  final _alunosrepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosrepository.findAll();

    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunosrepository.findById(id);

    print(aluno);
  }

  Future<void> update() async {
    final aluno = await _alunosrepository.findById('1');

    aluno.nomeCurso.add('Teste');

    await _alunosrepository.update(aluno);

    final alunoAlterado = await _alunosrepository.findById('1');

    print(alunoAlterado.nomeCurso);
  }

  Future<void> insert() async {
    final aluno = Aluno(
        nome: 'Lucas',
        nomeCurso: ['Academia do flutter'],
        endereco: Endereco(
          rua: 'Rua b',
          numero: 11,
          cep: '123456789',
          cidade: Cidade(id: 1, nome: 'Teste'),
          telefone: Telefone(ddd: 11, telefone: '9876543210'),
        ),
        cursos: [
          Curso(
            id: 1,
            nome: 'HAHAHAHA',
            isAluno: true,
          ),
        ]);

    _alunosrepository.insert(aluno);
  }
}
