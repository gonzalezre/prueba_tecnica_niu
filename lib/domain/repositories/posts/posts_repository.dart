import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/domain/model/data/posts/posts_model.dart';

abstract class PostsRepository {
  Future<DataState<List<PostsModel>>> retrievePosts();
}
