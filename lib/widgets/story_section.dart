import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/stories.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return SizedBox(
      child: Stories(),
      height: deviceSize.height * 15 / 100,
    );
  }
}
