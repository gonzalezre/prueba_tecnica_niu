part of 'post_bloc.dart';

class PostState extends Equatable {
  final List<PostsModel> posts;
  final List<PostsModel> filteredPosts;
  final String query;
  final String errorMessage;
  final bool isLoading;

  const PostState({
    required this.posts,
    required this.filteredPosts,
    required this.query,
    required this.errorMessage,
    required this.isLoading,
  });

  factory PostState.initial() => const PostState(
    posts: <PostsModel>[],
    filteredPosts: <PostsModel>[],
    query: '',
    errorMessage: '',
    isLoading: false,
  );

  static const empty = PostState(
    posts: <PostsModel>[],
    filteredPosts: <PostsModel>[],
    query: '',
    errorMessage: '',
    isLoading: false,
  );

  PostState copyWith({
    List<PostsModel>? posts,
    List<PostsModel>? filteredPosts,
    String? errorMessage,
    String? query,
    required bool isLoading,
  }) => PostState(
    posts: posts ?? this.posts,
    filteredPosts: filteredPosts ?? this.filteredPosts,
    query: query ?? this.query,
    errorMessage: errorMessage ?? this.errorMessage,
    isLoading: isLoading,
  );

  @override
  List<Object> get props => [posts, filteredPosts, query, errorMessage, isLoading];
}
