import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_app/core/di/di.dart';
import 'package:posts_app/ui/posts/bloc/post_bloc.dart';
import 'package:posts_app/ui/posts/widgets/post_item.dart';
import 'package:posts_app/ui/widgets/app_bar_widget.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diInstance.get<PostBloc>()..add(const GetPostsEvent()),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBarWidget(
            title: 'Posts',
            onSearch: (query) =>
                context.read<PostBloc>().add(SearchPostsEvent(query)),
            showSearch: true,
          ),
          body: const PostView(),
        ),
      ),
    );
  }
}

class PostView extends StatelessWidget {
  const PostView({super.key});

  Future<void> _onRefresh(BuildContext context) async {
    context.read<PostBloc>().add(const GetPostsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context),
      child: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.errorMessage.isNotEmpty) {
            return Center(child: Text(state.errorMessage));
          }

          return PostItem(posts: state.filteredPosts);
        },
      ),
    );
  }
}
