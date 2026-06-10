import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:posts_app/core/extensions/null_extensions.dart';
import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/domain/model/data/post_comments/post_comments_model.dart';
import 'package:posts_app/domain/use_cases/post_comments/filter_post_comments_use_case.dart';
import 'package:posts_app/domain/use_cases/post_comments/get_post_comments_use_case.dart';

part 'post_comments_event.dart';
part 'post_comments_state.dart';

class PostCommentsBloc extends Bloc<PostCommentsEvent, PostCommentsState> {
  final GetPostCommentsUseCase getPostCommentsUseCase;
  final FilterPostCommentsUseCase filterPostCommentsUseCase;

  PostCommentsBloc({
    required this.getPostCommentsUseCase,
    required this.filterPostCommentsUseCase,
  }) : super(PostCommentsState.initial()) {
    on<GetPostCommentsEvent>(_onGetPostComments);
    on<SearchPostCommentsEvent>(_onSearchPostComments);
  }

  Future<void> _onGetPostComments(GetPostCommentsEvent event, Emitter<PostCommentsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await getPostCommentsUseCase.call(params: event.postId);

    if (result is DataSuccess) {
      final comments = result.data ?? [];
      emit(
        state.copyWith(comments: comments, filteredComments: comments, isLoading: false),
      );
    } else {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: result.error.orEmptyString,
        ),
      );
    }
  }

  Future<void> _onSearchPostComments(
    SearchPostCommentsEvent event,
    Emitter<PostCommentsState> emit,
  ) async {
    final filtered = await filterPostCommentsUseCase.call(
      params: FilterPostCommentsParams(comments: state.comments, query: event.query),
    );

    emit(
      state.copyWith(
        query: event.query,
        filteredComments: filtered,
        isLoading: false,
      ),
    );
  }
}
