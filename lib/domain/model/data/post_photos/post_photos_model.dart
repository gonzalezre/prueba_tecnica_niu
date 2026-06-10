import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_photos_model.freezed.dart';
part 'post_photos_model.g.dart';

@freezed
abstract class PostPhotosModel with _$PostPhotosModel {
  const factory PostPhotosModel({
    @Default(0) int id,
    @Default(0) int albumId,
    @Default('') String title,
    @Default('') String url,
    @Default('') String thumbnailUrl,
  }) = _PostPhotosModel;

  factory PostPhotosModel.fromJson(Map<String, dynamic> json) => _$PostPhotosModelFromJson(json);
}