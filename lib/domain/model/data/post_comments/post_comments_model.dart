
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_comments_model.freezed.dart';
part 'post_comments_model.g.dart';

@freezed
abstract class PostCommentsModel with _$PostCommentsModel {
  const factory PostCommentsModel({
    @Default(0) int id,
    @Default(0) int postId,
    @Default('') String name,
    @Default('') String email,
    @Default('') String body,
  }) = _PostCommentsModel;

  factory PostCommentsModel.fromJson(Map<String, dynamic> json) => _$PostCommentsModelFromJson(json);
}