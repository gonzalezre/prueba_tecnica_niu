import 'package:flutter/material.dart';
import 'package:posts_app/domain/model/data/post_photos/post_photos_model.dart';

class PostPhotosItem extends StatelessWidget {
  const PostPhotosItem({super.key, required this.photos});
  final List<PostPhotosModel> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.25,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        final PostPhotosModel photo = photos[index];
        return Column(
          children: [
            Image.network(
              photo.url,
              height: 75,
              width: 75,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.broken_image,
                  size: 75
                  );
              },
            ),
            Text(photo.title, textAlign: TextAlign.center),
          ],
        );
      },
    );
  }
}
