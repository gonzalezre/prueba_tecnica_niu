part of 'post_photos_bloc.dart';

class PostPhotosState extends Equatable {
  const PostPhotosState({
    required this.photos,
    required this.errorMessage,
    required this.isLoading,
  });

  final List<PostPhotosModel> photos;
  final String errorMessage;
  final bool isLoading;

  factory PostPhotosState.initial() => const PostPhotosState(
    photos: <PostPhotosModel>[],
    errorMessage: '',
    isLoading: false,
  );

  static const empty = PostPhotosState(
    photos: <PostPhotosModel>[],
    errorMessage: '',
    isLoading: false,
  );

  PostPhotosState copyWith({
    List<PostPhotosModel>? photos,
    String? errorMessage,
    required bool isLoading,
  }) => PostPhotosState(
    photos: photos ?? this.photos,
    errorMessage: errorMessage ?? this.errorMessage,
    isLoading: isLoading,
  );

  @override
  List<Object> get props => [photos, errorMessage, isLoading];
}
