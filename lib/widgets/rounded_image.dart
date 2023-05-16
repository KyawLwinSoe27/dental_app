import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  const RoundedImage({Key? key,required this.image, required this.width, required this.height}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: Image.asset(
          image,
          width: 50,
          height: 50,
        ));
  }
}
