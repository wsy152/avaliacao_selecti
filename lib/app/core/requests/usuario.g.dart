// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map<String, dynamic> json) => Usuario(
      id: json['id'] as int?,
      login: json['login'] as String?,
      nome: json['nome'] as String?,
      email: json['email'] as String?,
      error: json['error'] as String?,
      urlFoto: json['urlFoto'] as String?,
      token: json['token'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'nome': instance.nome,
      'email': instance.email,
      'error': instance.error,
      'urlFoto': instance.urlFoto,
      'token': instance.token,
      'roles': instance.roles,
    };
