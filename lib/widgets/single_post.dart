import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SinglePost extends StatelessWidget {
  const SinglePost({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://greendestinations.org/wp-content/uploads/2019/05/avatar-exemple.jpg'))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Henry Izontimi')
                ],
              ),
            ),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () => null)
          ],
        ),
        Flexible(
          child: Image.network(
              'https://greendestinations.org/wp-content/uploads/2019/05/avatar-exemple.jpg'),
          fit: FlexFit.loose,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.heart),
                  SizedBox(width: 15.0),
                  Icon(FontAwesomeIcons.comment),
                  SizedBox(width: 15.0),
                  Icon(FontAwesomeIcons.paperPlane),
                ],
              ),
              Icon(FontAwesomeIcons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://greendestinations.org/wp-content/uploads/2019/05/avatar-exemple.jpg'))),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment",
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
