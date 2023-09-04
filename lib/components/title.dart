import 'package:flutter/material.dart';

class TitleStar extends StatelessWidget {
  final String nameSpace;

  const TitleStar({Key? key, required this.nameSpace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 320.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        nameSpace,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black,
            fontFamily: "Lato"),
        textAlign: TextAlign.left,
      ),
    );
  }
}
