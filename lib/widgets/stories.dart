import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Stories',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text(
            'Watch All',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ],
  );

  final stories = Expanded(child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 15,
    itemBuilder: (context, index) => Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0 ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://greendestinations.org/wp-content/uploads/2019/05/avatar-exemple.jpg')
            )
          ),
        ),
        index == 0 ? Positioned(
          right: 10.0,
          child:  CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 10.0,
            child: Icon(Icons.add, size: 14.0, color: Colors.white,),
          ),
        ) : Container(),
      ],
    ),
  ),);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
