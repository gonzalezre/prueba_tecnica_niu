import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:posts_app/config/constants/env_constants.dart';
import 'package:posts_app/data/data_source/remote/post_comments_data_source/post_comments_data_source.dart';
import 'package:posts_app/data/data_source/remote/post_photos_data_source/post_photos_data_source.dart';
import 'package:posts_app/data/data_source/remote/posts/posts_data_source.dart';
import 'package:posts_app/data/repository/post_comments/post_comments_repository_impl.dart';
import 'package:posts_app/data/repository/post_photos_repository/post_photos_repository_impl.dart';
import 'package:posts_app/data/repository/posts/posts_repository_impl.dart';
import 'package:posts_app/data/services/api/api.dart';
import 'package:posts_app/data/services/api/api_impl.dart';
import 'package:posts_app/data/services/tools/network_info.dart';
import 'package:posts_app/domain/repositories/post_comments/post_comments_repository.dart';
import 'package:posts_app/domain/repositories/post_photos/post_photos_repository.dart';
import 'package:posts_app/domain/repositories/posts/posts_repository.dart';
import 'package:posts_app/domain/use_cases/post_comments/filter_post_comments_use_case.dart';
import 'package:posts_app/domain/use_cases/post_comments/get_post_comments_use_case.dart';
import 'package:posts_app/domain/use_cases/post_photos/get_post_photos_use_case.dart';
import 'package:posts_app/domain/use_cases/posts/filter_posts_use_case.dart';
import 'package:posts_app/domain/use_cases/posts/get_posts_use_case.dart';
import 'package:posts_app/ui/post_comments/bloc/post_comments_bloc.dart';
import 'package:posts_app/ui/post_photos/bloc/post_photos_bloc.dart';
import 'package:posts_app/ui/posts/bloc/post_bloc.dart';

var diInstance = GetIt.instance;
final dio = getDio(EnvConstants.serverApi);

Future<void> configureDependencies(GetIt instance) async {
  diInstance = instance;
  await init(instance);
}

Future<void> init(GetIt instance) async {
  //tools
  if (!instance.isRegistered<NetworkInfo>()) {
    instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(instance()),
    );
  }

  if (!instance.isRegistered<InternetConnectionChecker>()) {
    instance.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker.createInstance(),
    );
  }
  if (!instance.isRegistered<Api>()) {
    instance.registerLazySingleton<Api>(() => ApiImpl(dio: dio));
  }

  //Data Sources
  if (!instance.isRegistered<PostsDataSource>()) {
    instance.registerLazySingleton<PostsDataSource>(
      () => PostsDataSourceImpl(
        networkInfo: instance(), 
        api: instance()
      ),
    );
  }  

  if (!instance.isRegistered<PostCommentsDataSource>()) {
    instance.registerLazySingleton<PostCommentsDataSource>(
      () => PostCommentsDataSourceImpl(
        networkInfo: instance(), 
        api: instance()
      ),
    );
  }

  if (!instance.isRegistered<PostPhotosDataSource>()) {
    instance.registerLazySingleton<PostPhotosDataSource>(
      () => PostPhotosDataSourceImpl(
        networkInfo: instance(), 
        api: instance()
      ),
    );
  }

  //Repositories
  if (!instance.isRegistered<PostsRepository>()) {
    instance.registerLazySingleton<PostsRepository>(
      () => PostsRepositoryImpl(postsDataSource: instance()),
    );
  }

  if (!instance.isRegistered<PostCommentsRepository>()) {
    instance.registerLazySingleton<PostCommentsRepository>(
      () => PostCommentsRepositoryImpl(postCommentsDataSource: instance()),
    );
  }

  if (!instance.isRegistered<PostPhotosRepository>()) {
    instance.registerLazySingleton<PostPhotosRepository>(
      () => PostPhotosRepositoryImpl(postPhotosDataSource: instance()),
    );
  }

  //Use Cases
  if (!instance.isRegistered<GetPostsUseCase>()) {
    instance.registerLazySingleton<GetPostsUseCase>(
      () => GetPostsUseCase(postsRepository: instance()),
    );
  }

  if (!instance.isRegistered<FilterPostsUseCase>()) {
    instance.registerLazySingleton<FilterPostsUseCase>(
      () => FilterPostsUseCase(),
    );
  }

  if (!instance.isRegistered<GetPostCommentsUseCase>()) {
    instance.registerLazySingleton<GetPostCommentsUseCase>(
      () => GetPostCommentsUseCase(postCommentsRepository: instance()),
    );
  }

  if (!instance.isRegistered<FilterPostCommentsUseCase>()) {
    instance.registerLazySingleton<FilterPostCommentsUseCase>(
      () => FilterPostCommentsUseCase(),
    );
  }

  if (!instance.isRegistered<GetPostPhotosUseCase>()) {
    instance.registerLazySingleton<GetPostPhotosUseCase>(
      () => GetPostPhotosUseCase(postPhotosRepository: instance()),
    );
  }

  //Blocs
  if (!instance.isRegistered<PostBloc>()) {
    instance.registerFactory<PostBloc>(
      () => PostBloc(
        getPostsUseCase: instance(),
        filterPostsUseCase: instance(),
      ),
    );
  }

  if (!instance.isRegistered<PostCommentsBloc>()) {
    instance.registerFactory<PostCommentsBloc>(
      () => PostCommentsBloc(
        getPostCommentsUseCase: instance(),
        filterPostCommentsUseCase: instance(),
      ),
    );
  }

  if (!instance.isRegistered<PostPhotosBloc>()) {
    instance.registerFactory<PostPhotosBloc>(
      () => PostPhotosBloc(
        getPostPhotosUseCase: instance(),
      ),
    );
  }
}


Dio getDio(String baseUrl) {
  final dio = Dio(getBaseOptions(baseUrl));
  return dio;
}

BaseOptions getBaseOptions(String baseUrl) {
  return BaseOptions(
    validateStatus: (status) {
      return true;
    },
    baseUrl: baseUrl,
    headers: {'Content-Type': 'application/json'},
    followRedirects: false,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );
}
