import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        theme: ThemeData(
          primaryColor: Colors.white,
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
          primaryIconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(title: TextStyle(color: Colors.black)), 
        ),
        home: Home(),
      ),
    );
  }
}
