import 'package:flutter/material.dart';
import 'screens/dialpad_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VoilaCall',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DialpadScreen(), // Display DialpadScreen as the initial screen
    );
  }
}
