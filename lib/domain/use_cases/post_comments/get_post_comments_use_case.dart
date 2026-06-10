import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/core/usecase/usecase.dart';
import 'package:posts_app/domain/model/data/post_comments/post_comments_model.dart';
import 'package:posts_app/domain/repositories/post_comments/post_comments_repository.dart';

class GetPostCommentsUseCase extends UseCase<DataState<List<PostCommentsModel>>, int> {
    GetPostCommentsUseCase({
    required this.postCommentsRepository,
  });
  final PostCommentsRepository postCommentsRepository;

  @override
  Future<DataState<List<PostCommentsModel>>> call({int params = 1}) async {
    return postCommentsRepository.retrievePostComments(params);
  }
}
