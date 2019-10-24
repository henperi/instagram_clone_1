import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/home_body.dart';

class Home extends StatelessWidget {
  static final screenName = 'home';

  final topBar = AppBar(
    title: SizedBox(
      height: 35.0,
      child: Image.asset('assets/images/instagram-text-logo.png'),
    ),
    centerTitle: true,
    elevation: 2.0,
    leading: Icon(Icons.camera_alt),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 2.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: HomeBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), onPressed: () => null,),
              IconButton(icon: Icon(Icons.search), onPressed: () => null,),
              IconButton(icon: Icon(Icons.add_box), onPressed: () => null,),
              IconButton(icon: Icon(Icons.person), onPressed: () => null,),
            ],
          ),
        ),
      ),
    );
  }
}
