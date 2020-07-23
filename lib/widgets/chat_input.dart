import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFCF5DC),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Type your message...',
                border: InputBorder.none,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              //Implement send functionality.
            },
            child: Text(
              'Send',
            ),
          ),
        ],
      ),
    );
  }
}
