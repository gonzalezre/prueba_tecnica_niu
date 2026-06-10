
import 'package:posts_app/core/extensions/null_extensions.dart';
import 'package:posts_app/core/mapper/mapper.dart';
import 'package:posts_app/data/models/response/post_photos/post_photos_dto.dart';
import 'package:posts_app/domain/model/data/post_photos/post_photos_model.dart';

class PostPhotosMapper extends Mapper<PostPhotosDto, PostPhotosModel> {
  @override
  PostPhotosModel map(PostPhotosDto from) {
    return PostPhotosModel(
      id: from.id.orIntZero,
      albumId: from.albumId.orIntZero,
      title: from.title.orEmptyString,
      url: from.url.orEmptyString,
      thumbnailUrl: from.thumbnailUrl.orEmptyString,
    );
  }
}
