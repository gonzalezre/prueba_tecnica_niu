import 'package:dio/dio.dart';
import 'package:posts_app/data/models/response/post_comments/post_comments_dto.dart';
import 'package:posts_app/data/models/response/post_photos/post_photos_dto.dart';
import 'package:posts_app/data/models/response/posts/posts_dto.dart';
import 'package:retrofit/retrofit.dart';
// import 'package:posts_app/data/models/posts/posts_model.dart';
// import 'package:posts_app/data/models/posts/post_comments_model.dart';
// import 'package:posts_app/data/models/posts/post_photos_model.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET('/posts')
  Future<HttpResponse<List<PostsDto>>> retrievePosts();

  @GET('/posts/{idPost}/comments')
  Future<HttpResponse<List<PostCommentsDto>>> retrievePostComments(
    @Path('idPost') int postId,
  );

  @GET('/posts/{idPost}/photos')
  Future<HttpResponse<List<PostPhotosDto>>> retrievePostPhotos(
    @Path('idPost') int postId,
  );
}
