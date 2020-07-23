import 'package:flutter/material.dart';

import 'package:Chat_Messenger__Flutter_App/screens/chat_screen.dart';
import 'package:Chat_Messenger__Flutter_App/screens/chat_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xFFfd4a32),
        textTheme: TextTheme(
          headline1: Theme.of(context).textTheme.headline1.copyWith(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
          headline2: Theme.of(context).textTheme.headline2.copyWith(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
          bodyText1: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Color(0xFF4A5477),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
          bodyText2: Theme.of(context).textTheme.bodyText2.copyWith(
                color: Color(0xFF888ca1),
                fontSize: 12,
              ),
        ),
      ),
      home: ChatScreen(),
      routes: {
        ChatDetailScreen.route: (ctx) => ChatDetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
