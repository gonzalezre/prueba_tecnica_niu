
import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/data/data_source/remote/post_photos_data_source/post_photos_data_source.dart';
import 'package:posts_app/domain/model/data/post_photos/post_photos_model.dart';
import 'package:posts_app/domain/repositories/post_photos/post_photos_repository.dart';

class PostPhotosRepositoryImpl implements PostPhotosRepository {
  PostPhotosRepositoryImpl({required this.postPhotosDataSource});
  final PostPhotosDataSource postPhotosDataSource;

  @override
  Future<DataState<List<PostPhotosModel>>> retrievePostPhotos(int postId) {
    return postPhotosDataSource.retrievePostPhotos(postId);
  }
}
