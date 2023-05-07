import 'package:flutter/material.dart';

class CustonKeyboardLoginPage extends StatelessWidget {
  final Function(String) onKeyPressed;
  final Size screenSize;
  const CustonKeyboardLoginPage({super.key, required this.onKeyPressed, required this.screenSize});

  Widget _buildButton(String text) {
    return Expanded(
      child: TextButton(
        child: Text(
          text,
          style: const TextStyle(fontSize: 30, color: Colors.black),
        ),
        onPressed: () => onKeyPressed(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double spaceBetweenLines = screenSize.height * 0.05;
    return Container(
      width: screenSize.width * 0.90,
      decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
            ],
          ),
          SizedBox(height: spaceBetweenLines,),
          Row(
            children: [
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
            ],
          ),
          SizedBox(height: spaceBetweenLines,),
          Row(
            children: [
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
            ],
          ),
          SizedBox(height: spaceBetweenLines,),
          Row(
            children: [
              _buildButton(''),
              _buildButton('0'),
              _buildButton('<'),
            ],
          ),
        ],
      ),
    );
  }
}
