import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final double uHeight;
  final double lHeight;
  final bool isDetails;
  const BackgroundWidget({super.key,
    required this.uHeight,
    required this.lHeight,
    required this.isDetails
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: uHeight,
            color: Colors.lightBlue,
          ),
          Container(
            height: lHeight,
            color: isDetails ? Colors.blueAccent : Colors.white ,
          ),
        ],
      ),
    );
  }
}