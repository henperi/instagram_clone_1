import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/single_post.dart';

class Posts extends StatelessWidget {
  const Posts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 15,
        itemBuilder: (context, index) => Card(child: SinglePost(), elevation: 1.0,),
      ),
    );
  }
}
