import 'package:flutter/material.dart';

class ChatListContainer extends StatelessWidget {
  final List<Widget> children;

  ChatListContainer({
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Color(0xFFFA1D00),
              offset: Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(40, 30),
            topRight: Radius.elliptical(40, 30),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(50, 40),
            topRight: Radius.elliptical(50, 40),
          ),
          child: Container(
            color: Colors.white,
            child: SafeArea(
              top: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
