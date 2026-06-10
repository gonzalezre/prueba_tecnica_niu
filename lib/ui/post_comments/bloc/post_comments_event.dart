part of 'post_comments_bloc.dart';

sealed class PostCommentsEvent extends Equatable {
  const PostCommentsEvent();

  @override
  List<Object> get props => [];
}

class GetPostCommentsEvent extends PostCommentsEvent {
  const GetPostCommentsEvent(this.postId);

  final int postId;
}

class SearchPostCommentsEvent extends PostCommentsEvent {
  const SearchPostCommentsEvent(this.query);

  final String query;
}