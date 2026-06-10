import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:posts_app/core/di/di.dart' as di;
import 'package:posts_app/core/di/di.dart';
import 'package:posts_app/core/navigation/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureModule(diInstance);
  runApp(const PostsApp());
}

Future<void> configureModule(GetIt instance) async {
  await di.configureDependencies(instance);
}

class PostsApp extends StatelessWidget {
  const PostsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Posts App',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      debugShowCheckedModeBanner: false,
      routerConfig: RouterManager.router,
    );
  }
}
