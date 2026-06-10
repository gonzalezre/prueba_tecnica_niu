import 'package:flutter/material.dart';
import 'package:posts_app/domain/model/data/post_comments/post_comments_model.dart';

class PostCommentsItem extends StatelessWidget {
  const PostCommentsItem({
    super.key, 
    required this.comments
  });
  final List<PostCommentsModel> comments;
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final PostCommentsModel comment = comments[index];
          final bool isReceiver = index.isEven;
        return Column(
          crossAxisAlignment: isReceiver ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Card(
                color: Colors.green[300],
              elevation: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), 
                child: Text(
                  comment.body, 
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal,),
                  textAlign: isReceiver ? TextAlign.end : TextAlign.start,
                  //textAlign: TextAlign.justify,
                  )),
                        ),
            ),
          Container(margin: const EdgeInsets.symmetric(horizontal: 8), child: Text(comment.email, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)),
          ]
        );
      },
    );
  }
}