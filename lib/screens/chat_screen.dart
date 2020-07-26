import 'package:flutter/material.dart';

import 'package:Chat_Messenger__Flutter_App/widgets/app_bar_header.dart';
import 'package:Chat_Messenger__Flutter_App/widgets/chat_list_container.dart';
import 'package:Chat_Messenger__Flutter_App/widgets/user_chat_card.dart';

class ChatScreen extends StatelessWidget {
  static String route = '/chats';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBarHeader(
            action: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 20,
              top: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Messages",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Online",
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: Color(0xffffbab5),
                          ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Group",
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: Color(0xffffbab5),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ChatListContainer(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) => UserChatCard(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
