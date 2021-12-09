import 'package:json_annotation/json_annotation.dart';

part 'usuario.g.dart';

@JsonSerializable()
class Usuario {
  Usuario(
      {this.id,
      this.login,
      this.nome,
      this.email,
      this.error,
      this.urlFoto,
      this.token,
      this.roles});

  int? id;
  String? login;
  String? nome;
  String? email;
  String? error;
  String? urlFoto;
  String? token;
  List<String>? roles;
  factory Usuario.fromJson(Map<String, dynamic>? json) =>
      _$UsuarioFromJson(json!);

  Map<String, dynamic>? toJson() => _$UsuarioToJson(this);
}
