import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:posts_app/domain/model/data/posts/posts_model.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.posts});

  final List<PostsModel> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final PostsModel post = posts[index];
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title.trim().toUpperCase(),
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 16),
                Text(
                  post.body,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => context.push('/photos/${post.id}'), icon: const Icon(Icons.photo_album),
                      iconSize: 24,
                    ),
                    IconButton(
                      onPressed: () => context.push('/comments/${post.id}'),
                      icon: const Icon(Icons.comment),
                      iconSize: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
