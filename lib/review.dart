import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String photoURL;

  const Review({Key? key, required this.photoURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatarCircle = Container(
      margin: const EdgeInsets.only(top: 10, left: 20.0),
      child: CircleAvatar(
          backgroundColor: Colors.indigo,
          backgroundImage: AssetImage(photoURL),
          maxRadius: 40,
          minRadius: 40),
    );

    final textReview = Container(
      margin: const EdgeInsets.only(top: 40.0, left: 20.0),
      child: const Text(
        "All reviews",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            color: Colors.grey,
            fontFamily: "Lato"),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [textReview]),
        Row(
          children: [avatarCircle],
        ),
      ],
    );
  }
}
