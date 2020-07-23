import 'package:flutter/material.dart';

class AppBarHeader extends StatelessWidget {
  final String title;
  final Widget action;
  final Function backAction;

  AppBarHeader({
    this.title,
    this.action,
    this.backAction,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: backAction,
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            if (title != null)
              FittedBox(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            action,
          ],
        ),
      ),
    );
  }
}
