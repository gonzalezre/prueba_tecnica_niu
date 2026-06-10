import 'package:posts_app/core/extensions/null_extensions.dart';
import 'package:posts_app/core/mapper/mapper.dart';
import 'package:posts_app/data/models/response/post_comments/post_comments_dto.dart';
import 'package:posts_app/domain/model/data/post_comments/post_comments_model.dart';

class PostCommentsMapper extends Mapper<PostCommentsDto, PostCommentsModel> {
  @override
  PostCommentsModel map(PostCommentsDto from) {
    return PostCommentsModel(
      id: from.id.orIntZero,
      postId: from.postId.orIntZero,
      name: from.name.orEmptyString,
      email: from.email.orEmptyString,
      body: from.body.orEmptyString,
    );
  }
}
