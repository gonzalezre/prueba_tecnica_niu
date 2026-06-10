import 'package:posts_app/core/usecase/usecase.dart';
import 'package:posts_app/domain/model/data/posts/posts_model.dart';

class FilterPostsParams {
  const FilterPostsParams({required this.posts, required this.query});
  final List<PostsModel> posts;
  final String query;
}

class FilterPostsUseCase extends UseCase<List<PostsModel>, FilterPostsParams> {
  FilterPostsUseCase();

  @override
  Future<List<PostsModel>> call({FilterPostsParams? params}) async {
    final query = params!.query.trim().toLowerCase();
    if (query.isEmpty) return params.posts;
    return params.posts
        .where((post) => post.body.toLowerCase().contains(query))
        .toList();
  }
}
