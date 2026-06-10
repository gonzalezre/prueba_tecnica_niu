
import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/core/usecase/usecase.dart';
import 'package:posts_app/domain/model/data/post_photos/post_photos_model.dart';
import 'package:posts_app/domain/repositories/post_photos/post_photos_repository.dart';

class GetPostPhotosUseCase extends UseCase<DataState<List<PostPhotosModel>>, int> {
  GetPostPhotosUseCase({required this.postPhotosRepository});
  final PostPhotosRepository postPhotosRepository;

  @override
  Future<DataState<List<PostPhotosModel>>> call({int params = 1}) async {
    return postPhotosRepository.retrievePostPhotos(params);
  }
}
