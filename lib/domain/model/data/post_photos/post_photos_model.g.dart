// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_photos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostPhotosModel _$PostPhotosModelFromJson(Map<String, dynamic> json) =>
    _PostPhotosModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      albumId: (json['albumId'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      url: json['url'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
    );

Map<String, dynamic> _$PostPhotosModelToJson(_PostPhotosModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
