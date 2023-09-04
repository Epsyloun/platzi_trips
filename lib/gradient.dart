import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget {

  final String titleName;

const GradientBox({ Key? key, required this.titleName }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Colors.pink
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      alignment: const Alignment(-0.9, -0.6),
      child: Text(
        titleName,
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