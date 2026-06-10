import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/core/usecase/usecase.dart';
import 'package:posts_app/domain/model/data/posts/posts_model.dart';
import 'package:posts_app/domain/repositories/posts/posts_repository.dart';

class GetPostsUseCase extends UseCase<DataState<List<PostsModel>>, void> {
  GetPostsUseCase({
    required this.postsRepository
    });
  final PostsRepository postsRepository;

  @override
  Future<DataState<List<PostsModel>>> call({void params}) async {
    return postsRepository.retrievePosts();
  }
}
