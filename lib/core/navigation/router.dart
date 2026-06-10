import 'package:go_router/go_router.dart';
import 'package:posts_app/ui/post_comments/post_comments_page.dart';
import 'package:posts_app/ui/post_photos/post_photos_page.dart';
import 'package:posts_app/ui/posts/post_page.dart';

class RouterManager {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PostPage(),
      ),
      GoRoute(
        path: '/comments/:id', 
        builder: (context, state) {
           final postId = int.parse(state.pathParameters['id'] ?? '0');
           return PostCommentsPage(postId: postId);
        },
      ),
      GoRoute(
        path: '/photos/:id', 
        builder: (context, state) {
          final postId = int.parse(state.pathParameters['id'] ?? '0');
          return PostPhotosPage(postId: postId);
        },
      ),
    ],
  );
}
