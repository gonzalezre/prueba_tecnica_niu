// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostsDto _$PostsDtoFromJson(Map<String, dynamic> json) => _PostsDto(
  id: (json['id'] as num?)?.toInt() ?? 0,
  userId: (json['userId'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? '',
  body: json['body'] as String? ?? '',
);

Map<String, dynamic> _$PostsDtoToJson(_PostsDto instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'body': instance.body,
};
