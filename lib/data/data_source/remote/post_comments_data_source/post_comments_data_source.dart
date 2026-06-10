import 'dart:io';

import 'package:dio/dio.dart';
import 'package:posts_app/config/enums/data_source_enum.dart';
import 'package:posts_app/config/extensions/data_source_extension.dart';
import 'package:posts_app/config/tools/helpers/helpers.dart';
import 'package:posts_app/core/extensions/null_extensions.dart';
import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/data/services/api/api.dart';
import 'package:posts_app/data/services/tools/network_info.dart';
import 'package:posts_app/domain/mapper/post_comments/post_comments_mapper.dart';
import 'package:posts_app/domain/model/data/post_comments/post_comments_model.dart';

abstract class PostCommentsDataSource {
  Future<DataState<List<PostCommentsModel>>> retrievePostComments(int postId);
}

class PostCommentsDataSourceImpl implements PostCommentsDataSource {
  PostCommentsDataSourceImpl({
    required this.networkInfo,
    required this.api,
  });
  final NetworkInfo networkInfo;
  final Api api;
  
  @override
  Future<DataState<List<PostCommentsModel>>> retrievePostComments(int postId) async{
    try {
      if (await networkInfo.isConnected) {
        final httpResponse = await api.retrievePostComments(postId);
        
        if(httpResponse.response.statusCode == HttpStatus.ok){
          final PostCommentsMapper mapper = PostCommentsMapper();
          final List<PostCommentsModel> comments = httpResponse.data.map((e) => mapper.map(e)).toList();

          return DataSuccess(data: comments);
        } else {
          final error = THelperFunctions.genericDioException(httpResponse.response);
          return DataError(
            error: THelperFunctions.generateErrorDio(error).message.orEmptyString,
          );
        }
      } else{
        return DataError(
          error: DataSource.NO_INTERNET_CONNECTION.getFailure().message,
        );
      }
    }
    on DioException catch (e) {
      return DataError(
        error: THelperFunctions.generateErrorDio(e).message.orEmptyString,
      );
    }
  }
}