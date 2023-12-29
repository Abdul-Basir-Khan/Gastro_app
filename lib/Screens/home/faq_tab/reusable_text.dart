import 'package:flutter/material.dart';


class ReusableText extends StatelessWidget {


  final String text;
  final FontWeight weight;
  final double size;
  final Color color;

  const ReusableText({Key? key, required this.text, required this.weight, required this.size, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontWeight: weight,fontSize: size,color: color),
    );
  }
}
