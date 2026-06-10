
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_comments_dto.freezed.dart';
part 'post_comments_dto.g.dart';

@freezed
abstract class PostCommentsDto with _$PostCommentsDto {
  const factory PostCommentsDto({
    @Default(0) int? id,
    @Default(0) int? postId,
    @Default('') String? name,
    @Default('') String? email,
    @Default('') String? body,
  }) = _PostCommentsDto;

  factory PostCommentsDto.fromJson(Map<String, dynamic> json) => _$PostCommentsDtoFromJson(json);
}