import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/domain/model/data/post_comments/post_comments_model.dart';

abstract class PostCommentsRepository {
  Future<DataState<List<PostCommentsModel>>> retrievePostComments(int postId);
}
