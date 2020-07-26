import 'package:Chat_Messenger__Flutter_App/widgets/chat_list_container.dart';
import 'package:flutter/material.dart';

import 'package:Chat_Messenger__Flutter_App/widgets/app_bar_header.dart';
import 'package:Chat_Messenger__Flutter_App/widgets/chat_card.dart';
import 'package:Chat_Messenger__Flutter_App/widgets/input.dart';

class ChatDetailScreen extends StatelessWidget {
  static String route = '/chat-detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBarHeader(
            title: 'Aj',
            backAction: () {
              Navigator.pop(context);
            },
            action: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
              color: Colors.white,
            ),
          ),
          ChatListContainer(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  shrinkWrap: true,
                  reverse: true,
                  itemBuilder: (ctx, index) => ChatCard(
                    text: 'Hello there',
                    time: '17:44 $index',
                    self: index % 2 == 1 ? true : false,
                  ),
                ),
              ),
              Input(),
            ],
          ),
        ],
      ),
    );
  }
}
