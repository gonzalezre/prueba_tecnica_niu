import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_app/core/di/di.dart';
import 'package:posts_app/ui/post_photos/bloc/post_photos_bloc.dart';
import 'package:posts_app/ui/post_photos/widgets/post_photos_item.dart';
import 'package:posts_app/ui/widgets/app_bar_widget.dart';

class PostPhotosPage extends StatelessWidget {
  const PostPhotosPage({
    super.key, 
    required this.postId});

  final int postId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diInstance.get<PostPhotosBloc>()..add(GetPostPhotosEvent(postId)),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBarWidget(
            title: 'Photos',
            onSearch: null,
            showSearch: false,
          ),
          body: PostPhotosView(postId: postId),
        ),
      ),
    );
  }
}

class PostPhotosView extends StatelessWidget {
  const PostPhotosView({super.key, required this.postId});
  final int postId;

  Future<void> _onRefresh(BuildContext context, int postId) async {
    context.read<PostPhotosBloc>().add(GetPostPhotosEvent(postId));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context, postId),
      child: BlocBuilder<PostPhotosBloc, PostPhotosState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : PostPhotosItem(photos: state.photos);
        },
      ),
    );
  }
}
