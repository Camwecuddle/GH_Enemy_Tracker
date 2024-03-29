import 'package:flutter/material.dart';
import 'package:gh_enemy_tracker/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gloomhaven Enemy Tracker',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w100,
            fontSize: 100,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w200,
            fontSize: 50,
          ),
          headline3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 50,
          ),
          headline4: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
          headline5: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 28,
          ),
          headline6: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(195, 34, 72, 1),
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
          button: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),

        buttonTheme: ButtonThemeData(),

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Start(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold();
  }
}
