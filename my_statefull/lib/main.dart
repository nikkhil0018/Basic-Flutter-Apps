import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> spanishNumbers = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'seis',
    'seite',
    'ocho',
    'nueve',
    'dietz'
  ];
  List<String> englishNumbers = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten'
  ];
  String defaultSpanishText = 'Spanish number';
  String defaultEnglishText = 'English number';

  void displaySNumners() {
    setState(() {
      defaultSpanishText = spanishNumbers[counter];
      defaultEnglishText = englishNumbers[counter];
      if (counter < 9) {
        counter = counter + 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My statful App"),
        backgroundColor: Colors.red,
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Spanish Numbers
            Text(
              defaultSpanishText,
              style: TextStyle(fontSize: 32.0),
            ),
            // Engish Numbers
            Text(
              defaultEnglishText,
              style: TextStyle(fontSize: 32.0),
            ),
            // Array Here
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 32.0),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              child: Text(
                'Call numbers',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: displaySNumners,
              color: Colors.red,
            )
          ],
        ),
      )),
    );
  }
}
