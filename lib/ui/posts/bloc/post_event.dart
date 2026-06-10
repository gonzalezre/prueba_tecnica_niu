part of 'post_bloc.dart';

sealed class PostEvent extends Equatable{
  const PostEvent();

  @override
  List<Object> get props => [];
}

class GetPostsEvent extends PostEvent {
  const GetPostsEvent();

  @override
  List<Object> get props => [];
}

class SearchPostsEvent extends PostEvent {
  const SearchPostsEvent(this.query);

  final String query;
}
