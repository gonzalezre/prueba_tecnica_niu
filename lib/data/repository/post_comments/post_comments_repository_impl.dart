import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/data/data_source/remote/post_comments_data_source/post_comments_data_source.dart';
import 'package:posts_app/domain/model/data/post_comments/post_comments_model.dart';
import 'package:posts_app/domain/repositories/post_comments/post_comments_repository.dart';

class PostCommentsRepositoryImpl implements PostCommentsRepository {
  PostCommentsRepositoryImpl({
    required this.postCommentsDataSource,
  });
  final PostCommentsDataSource postCommentsDataSource;

  @override
  Future<DataState<List<PostCommentsModel>>> retrievePostComments(int postId)  {
    return postCommentsDataSource.retrievePostComments(postId);
  }
}
