import 'package:flutter/material.dart';

class TextTitleWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const TextTitleWidget({
    super.key,
    required this.text1,
    required this.text2
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text2,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
