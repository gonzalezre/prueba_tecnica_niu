import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:posts_app/core/extensions/null_extensions.dart';
import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/domain/model/data/posts/posts_model.dart';
import 'package:posts_app/domain/use_cases/posts/filter_posts_use_case.dart';
import 'package:posts_app/domain/use_cases/posts/get_posts_use_case.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final GetPostsUseCase getPostsUseCase;
  final FilterPostsUseCase filterPostsUseCase;

  PostBloc({
    required this.getPostsUseCase, 
    required this.filterPostsUseCase
  })
    : super(PostState.empty) {
    on<GetPostsEvent>(_onGetPosts);
    on<SearchPostsEvent>(_onSearchPosts);
  }

  Future<void> _onGetPosts(GetPostsEvent event, Emitter<PostState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await getPostsUseCase.call();

    if (result is DataSuccess) {
      final posts = result.data ?? [];
      emit(state.copyWith(posts: posts, filteredPosts: posts, isLoading: false));
    } else {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: result.error.orEmptyString,
        ),
      );
    }
  }

  Future<void> _onSearchPosts(
    SearchPostsEvent event,
    Emitter<PostState> emit,
  ) async {
    final filtered = await filterPostsUseCase.call(
      params: FilterPostsParams(posts: state.posts, query: event.query),
    );

    emit(
      state.copyWith(
        query: event.query,
        filteredPosts: filtered,
        isLoading: false,
      ),
    );
  }
}
