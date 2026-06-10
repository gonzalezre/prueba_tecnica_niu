// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_photos_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostPhotosDto _$PostPhotosDtoFromJson(Map<String, dynamic> json) =>
    _PostPhotosDto(
      id: (json['id'] as num?)?.toInt() ?? 0,
      albumId: (json['albumId'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      url: json['url'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
    );

Map<String, dynamic> _$PostPhotosDtoToJson(_PostPhotosDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
