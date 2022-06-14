import 'dart:convert';
import 'package:consumo_api/controller/aluno_controller.dart';
import 'package:consumo_api/models/telefone.dart';

void main() {
  //AlunoController().findAll();
  //AlunoController().findById("1");
  //AlunoController().update();
  AlunoController().insert();
}

void main2(List<String> arguments) {
  final cidadeJson = '''
  [
    {
      "id":1,
      "nome":"Monte Alegre",
      "regiao":{
        "nome": "interior"
      }
    },
    {
      "id":1,
      "nome":"Serra Negra",
      "regiao":{
        "nome": "interior"
      }
    }
  ]
''';

  final cidadeMap = json.decode(cidadeJson);
  if (cidadeMap is List) {
    print("e uma lista");
  } else if (cidadeMap is Map) {
    print("e um Map");
  }

  print(cidadeMap.runtimeType);
  print(cidadeMap);

  cidadeMap.forEach((city) => print(city['regiao']['nome']));

  final telefoneJson = '''
{
  "ddd": 19,
  "telefone": "534987435465"
}
''';

  final telefone = Telefone.fromJson(telefoneJson);

  print(telefone.ddd);
  print(telefone.telefone);
  print(telefone.toJson());
  print(telefone.toMap());
}
