part of 'post_photos_bloc.dart';

sealed class PostPhotosEvent extends Equatable {
  const PostPhotosEvent();

  @override
  List<Object> get props => [];
}

class GetPostPhotosEvent extends PostPhotosEvent {
  const GetPostPhotosEvent(this.postId);

  final int postId;
}