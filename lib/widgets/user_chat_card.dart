import 'package:flutter/material.dart';

import 'package:Chat_Messenger__Flutter_App/screens/chat_detail_screen.dart';

class UserChatCard extends StatelessWidget {
  const UserChatCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ChatDetailScreen.route);
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Aj"),
                    SizedBox(height: 10),
                    Text(
                      'You: Cool',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Text('17:03'),
            ],
          ),
        ),
      ),
    );
  }
}
