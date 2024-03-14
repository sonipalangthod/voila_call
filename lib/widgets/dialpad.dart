import 'package:flutter/material.dart';

class Dialpad extends StatelessWidget {
  final Function(String) onDigitPressed;
  final Function() onClearPressed;
  final List<String> enteredDigits;

  const Dialpad({
    Key? key,
    required this.onDigitPressed,
    required this.onClearPressed,
    required this.enteredDigits,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300, // Adjust the height as needed
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                _buildButton('1'),
                _buildButton('2'),
                _buildButton('3'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _buildButton('4'),
                _buildButton('5'),
                _buildButton('6'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _buildButton('7'),
                _buildButton('8'),
                _buildButton('9'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _buildButton('C', onTap: onClearPressed),
                _buildButton('0'),
                _buildButton('*'), // Backspace button
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String label, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap != null
            ? () => onTap()
            : () {
          if (label == '<') {
            if (enteredDigits.isNotEmpty) {
              enteredDigits.removeLast();

            }
          } else {
            onDigitPressed(label);
          }
        },
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
