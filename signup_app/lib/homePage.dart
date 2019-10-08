import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name, email, mobile, collegename;
  HomePage(
      {Key key,
      @required this.name,
      @required this.email,
      @required this.mobile,
      @required this.collegename})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('\Name: ' + name),
            Text('\Name: ' + email),
            Text('\Name: ' + mobile),
            Text('\Name: ' + collegename),
          ],
        ),
      ),
    );
  }
}
