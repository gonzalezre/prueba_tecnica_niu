import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/data/data_source/remote/posts/posts_data_source.dart';
import 'package:posts_app/domain/model/data/posts/posts_model.dart';
import 'package:posts_app/domain/repositories/posts/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  PostsRepositoryImpl({
    required this.postsDataSource
    });
  final PostsDataSource postsDataSource;

  @override
  Future<DataState<List<PostsModel>>> retrievePosts() {
    return postsDataSource.retrievePosts();
  }
}
