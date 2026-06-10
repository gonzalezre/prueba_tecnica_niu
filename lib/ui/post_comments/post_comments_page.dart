import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_app/core/di/di.dart';
import 'package:posts_app/ui/post_comments/bloc/post_comments_bloc.dart';
import 'package:posts_app/ui/post_comments/widget/post_comments_item.dart';
import 'package:posts_app/ui/widgets/app_bar_widget.dart';

class PostCommentsPage extends StatelessWidget {
  const PostCommentsPage({super.key, required this.postId});
  final int postId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          diInstance.get<PostCommentsBloc>()..add(GetPostCommentsEvent(postId)),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBarWidget(
            title: 'Comments',
            onSearch: (query) => context.read<PostCommentsBloc>().add(
              SearchPostCommentsEvent(query),
            ),
            showSearch: true,
          ),
          body: PostCommentsView(postId: postId),
        ),
      ),
    );
  }
}

class PostCommentsView extends StatelessWidget {
  const PostCommentsView({
    super.key, 
    required this.postId
  });
  final int postId;


  Future<void> _onRefresh(BuildContext context, int postId) async {
    context.read<PostCommentsBloc>().add(GetPostCommentsEvent(postId));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context, postId),
      child: BlocBuilder<PostCommentsBloc, PostCommentsState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : PostCommentsItem(comments: state.filteredComments);
        },
      ),
    );
  }
}
