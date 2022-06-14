import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });
  // e um metodo que pega o objeto (telefone) e transforma em um Map<String, dynamic>
  //na grande maioria usado para enviar em um serviço
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
      };
  }
  // e um CONSTRUTOR eke vai oegar um MAP e transformar em um objeto telefone

  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone'] ?? '',
    );
  }

  //e um metodo que retorna uma string json do meu objeto Telefone
  String toJson() => jsonEncode(toMap());

  //e um metodo que baseado em uma string json retorna um objeto Telefone
  // factory Telefone.fromJson(String json) {
  //   Map<String, dynamic> jsonMap = jsonDecode(json);
  //   final telefone = Telefone.fromMap(jsonMap);
  //   return telefone;
  // }

  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
