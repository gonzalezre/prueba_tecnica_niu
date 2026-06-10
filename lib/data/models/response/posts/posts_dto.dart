import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_dto.freezed.dart';
part 'posts_dto.g.dart';

@freezed
abstract class PostsDto with _$PostsDto {
  const factory PostsDto({
    @Default(0) int? id,
    @Default(0) int? userId,
    @Default('') String? title,
    @Default('') String? body,
  }) = _PostsDto;

  factory PostsDto.fromJson(Map<String, dynamic> json) => _$PostsDtoFromJson(json);
}