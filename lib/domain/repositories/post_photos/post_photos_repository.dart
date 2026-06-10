import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/domain/model/data/post_photos/post_photos_model.dart';

abstract class PostPhotosRepository {
  Future<DataState<List<PostPhotosModel>>> retrievePostPhotos(int postId);
}
