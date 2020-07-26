import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String inputPlaceholder;
  final bool confirmBtn;
  final TextInputType inputType;
  final bool obscureText;

  Input({
    this.inputPlaceholder = 'Type your message...',
    this.confirmBtn = true,
    this.inputType = TextInputType.text,
    this.obscureText = false,
  });

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
                labelText: inputPlaceholder,
                border: InputBorder.none,
              ),
              keyboardType: inputType,
              obscureText: obscureText,
            ),
          ),
          if (confirmBtn)
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
