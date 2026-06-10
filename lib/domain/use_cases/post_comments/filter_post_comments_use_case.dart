import 'package:posts_app/core/usecase/usecase.dart';
import 'package:posts_app/domain/model/data/post_comments/post_comments_model.dart';

class FilterPostCommentsParams {
  const FilterPostCommentsParams({required this.comments, required this.query});
  final List<PostCommentsModel> comments;
  final String query;
}

class FilterPostCommentsUseCase extends UseCase<List<PostCommentsModel>, FilterPostCommentsParams> {
  FilterPostCommentsUseCase();

  @override
  Future<List<PostCommentsModel>> call({FilterPostCommentsParams? params}) async {
    final query = params!.query.trim().toLowerCase();
    if (query.isEmpty) return params.comments;
    return params.comments
        .where((comment) => comment.body.toLowerCase().contains(query))
        .toList();
  }
}
