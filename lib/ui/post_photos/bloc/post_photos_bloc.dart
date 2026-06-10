import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:posts_app/core/extensions/null_extensions.dart';
import 'package:posts_app/core/resources/data_state.dart';
import 'package:posts_app/domain/model/data/post_photos/post_photos_model.dart';
import 'package:posts_app/domain/use_cases/post_photos/get_post_photos_use_case.dart';

part 'post_photos_event.dart';
part 'post_photos_state.dart';

class PostPhotosBloc extends Bloc<PostPhotosEvent, PostPhotosState> {
  final GetPostPhotosUseCase getPostPhotosUseCase;

  PostPhotosBloc({
    required this.getPostPhotosUseCase,
  }) : super(PostPhotosState.initial()) {
    on<GetPostPhotosEvent>(_onGetPostPhotos);
  }

  Future<void> _onGetPostPhotos(GetPostPhotosEvent event, Emitter<PostPhotosState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await getPostPhotosUseCase.call(params: event.postId);

    if (result is DataSuccess) {
      final photos = result.data ?? [];
      emit(state.copyWith(photos: photos, errorMessage: '', isLoading: false));
    }
    else {
      emit(state.copyWith(errorMessage: result.error.orEmptyString, isLoading: false));
    }
  }
}
