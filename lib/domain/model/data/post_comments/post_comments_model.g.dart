// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostCommentsModel _$PostCommentsModelFromJson(Map<String, dynamic> json) =>
    _PostCommentsModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      postId: (json['postId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      body: json['body'] as String? ?? '',
    );

Map<String, dynamic> _$PostCommentsModelToJson(_PostCommentsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
