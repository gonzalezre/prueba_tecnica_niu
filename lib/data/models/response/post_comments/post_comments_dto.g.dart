// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comments_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostCommentsDto _$PostCommentsDtoFromJson(Map<String, dynamic> json) =>
    _PostCommentsDto(
      id: (json['id'] as num?)?.toInt() ?? 0,
      postId: (json['postId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      body: json['body'] as String? ?? '',
    );

Map<String, dynamic> _$PostCommentsDtoToJson(_PostCommentsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
