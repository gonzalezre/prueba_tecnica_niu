import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_model.freezed.dart';
part 'posts_model.g.dart';

@freezed
abstract class PostsModel with _$PostsModel {
  const factory PostsModel({
    @Default(0) int id,
    @Default(0) int userId,
    @Default('') String title,
    @Default('') String body,
  }) = _PostsModel;

  factory PostsModel.fromJson(Map<String, dynamic> json) => _$PostsModelFromJson(json);
}