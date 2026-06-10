import 'package:posts_app/core/extensions/null_extensions.dart';
import 'package:posts_app/core/mapper/mapper.dart';
import 'package:posts_app/data/models/response/posts/posts_dto.dart';
import 'package:posts_app/domain/model/data/posts/posts_model.dart';

class PostsMapper extends Mapper<PostsDto, PostsModel> {
  @override
  PostsModel map(PostsDto from) {
    return PostsModel(
      id: from.id.orIntZero,
      userId: from.userId.orIntZero,
      title: from.title.orEmptyString,
      body: from.body.orEmptyString,
    );
  }
}
