import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/posts.dart';
import 'package:instagram_clone/widgets/story_section.dart';


class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        StorySection(),
        Posts()
      ],
    );
  }
}
