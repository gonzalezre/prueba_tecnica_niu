import 'package:dio/dio.dart';
import 'package:posts_app/data/models/response/post_comments/post_comments_dto.dart';
import 'package:posts_app/data/models/response/post_photos/post_photos_dto.dart';
import 'package:retrofit/dio.dart';

import 'package:posts_app/config/constants/env_constants.dart';
import 'package:posts_app/data/models/response/posts/posts_dto.dart';

import 'api.dart';

class ApiImpl implements Api {
  ApiImpl({required this.dio});
  final Dio dio;

  late Api api;

  Future<void> init() async {
    api = Api(dio, baseUrl: EnvConstants.serverApi);
  }

  @override
  Future<HttpResponse<List<PostsDto>>> retrievePosts() {
    init();
    return api.retrievePosts();
  }

  @override
  Future<HttpResponse<List<PostCommentsDto>>> retrievePostComments(int postId) {
    init();
    return api.retrievePostComments(postId);
  }

  @override
  Future<HttpResponse<List<PostPhotosDto>>> retrievePostPhotos(int postId) {
    init();
    return api.retrievePostPhotos(postId);
  }
}
