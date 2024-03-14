import 'package:flutter/material.dart';
import 'package:voila_call/widgets/dialpad.dart';

class DialpadScreen extends StatefulWidget {
  @override
  _DialpadScreenState createState() => _DialpadScreenState();
}

class _DialpadScreenState extends State<DialpadScreen> {
  List<String> _enteredDigits = [];

  void _handleDigitPressed(String digit) {
    setState(() {
      _enteredDigits.add(digit);
    });
  }

  void _handleClearPressed() {
    setState(() {
      if (_enteredDigits.isNotEmpty) {
        _enteredDigits.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialpad'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _enteredDigits.join(),
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20),
            Dialpad(
              onDigitPressed: _handleDigitPressed,
              onClearPressed: _handleClearPressed,
              enteredDigits: _enteredDigits,
            ),
          ],
        ),
      ),
    );
  }
}
