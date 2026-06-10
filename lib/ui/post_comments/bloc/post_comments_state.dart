part of 'post_comments_bloc.dart';


class PostCommentsState extends Equatable {
  const PostCommentsState({
    required this.comments,
    required this.filteredComments,
    required this.query,
    required this.errorMessage,
    required this.isLoading,
  });

  final List<PostCommentsModel> comments;
  final List<PostCommentsModel> filteredComments;
  final String query;
  final String errorMessage;
  final bool isLoading;

  factory PostCommentsState.initial() => const PostCommentsState(
    comments: <PostCommentsModel>[],
    filteredComments: <PostCommentsModel>[],
    query: '',
    errorMessage: '',
    isLoading: false,
  );

  static const empty = PostCommentsState(
    comments: <PostCommentsModel>[],
    filteredComments: <PostCommentsModel>[],
    query: '',
    errorMessage: '',
    isLoading: false,
  );

  PostCommentsState copyWith({
    List<PostCommentsModel>? comments,
    List<PostCommentsModel>? filteredComments,
    String? errorMessage,
    String? query,
    required bool isLoading,
  }) => PostCommentsState(
    comments: comments ?? this.comments,
    filteredComments: filteredComments ?? this.filteredComments,
    errorMessage: errorMessage ?? this.errorMessage,
    query: query ?? this.query,
    isLoading: isLoading,
  );

  @override
  List<Object> get props => [comments, filteredComments, query, errorMessage, isLoading];
}
