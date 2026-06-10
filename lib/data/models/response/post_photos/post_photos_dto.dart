

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_photos_dto.freezed.dart';
part 'post_photos_dto.g.dart';

@freezed
abstract class PostPhotosDto with _$PostPhotosDto {
  const factory PostPhotosDto({
    @Default(0) int? id,
    @Default(0) int? albumId,
    @Default('') String? title,
    @Default('') String? url,
    @Default('') String? thumbnailUrl,
  }) = _PostPhotosDto;

  factory PostPhotosDto.fromJson(Map<String, dynamic> json) => _$PostPhotosDtoFromJson(json);
}