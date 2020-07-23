import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  String text;
  String time;
  bool self;

  ChatCard({
    Key key,
    this.time,
    this.text,
    this.self,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        if (self)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            // child: Icon(Icons.favorite_border),
          ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(self ? 0xFFFCF5DC : 0xFFFADDDD),
              borderRadius: BorderRadius.only(
                topLeft: self ? Radius.circular(20) : Radius.circular(0),
                bottomLeft: self ? Radius.circular(20) : Radius.circular(0),
                topRight: !self ? Radius.circular(20) : Radius.circular(0),
                bottomRight: !self ? Radius.circular(20) : Radius.circular(0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(time),
                SizedBox(height: 8),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
        if (!self)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Icon(Icons.favorite_border),
          ),
      ],
    );
  }
}
