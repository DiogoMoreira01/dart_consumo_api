import 'dart:convert';

import 'package:consumo_api/consumo_api.dart' as consumo_api;

void main(List<String> arguments) {
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
}
