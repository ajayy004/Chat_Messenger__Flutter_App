import 'package:flutter/material.dart';

import 'package:Chat_Messenger__Flutter_App/widgets/input.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 50,
                ),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Login',
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(letterSpacing: 5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Input(
                      inputPlaceholder: 'Email',
                      confirmBtn: false,
                      inputType: TextInputType.emailAddress,
                    ),
                    Input(
                      inputPlaceholder: 'Username',
                      confirmBtn: false,
                      inputType: TextInputType.text,
                    ),
                    Input(
                      inputPlaceholder: 'Password',
                      confirmBtn: false,
                      inputType: TextInputType.text,
                      obscureText: true,
                    ),
                    RaisedButton(
                      child: Text('Login'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text('Don\'t have account?'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
