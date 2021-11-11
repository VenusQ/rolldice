import 'package:flutter/material.dart';
import 'package:rolldice/TwoDice.dart';
import 'package:rolldice/OneDice.dart';

final Map<String, WidgetBuilder> map = {
  '/TwoDice': (BuildContext context) => TwoDice(),
  '/OneDice': (BuildContext context) => OneDice(),
};

String initiaRoute = '/TwoDice';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: initiaRoute,
      //debugShowCheckedModeBanner: false,
      //home: TwoDice(),
    );
  }
}