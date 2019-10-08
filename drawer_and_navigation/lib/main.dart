import 'package:flutter/material.dart';
import './myHomePage.dart';
import './category.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Navigation & Keys',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => Category()
      },
    );
  }
}
