import 'package:flutter/material.dart';
import 'package:platzi_tripps/components/stars.dart';

class Review extends StatelessWidget {

  final String photoURL;
  final String author;
  final int reviewCount;
  final int photosCount;
  final String miniTitle;

  const Review({Key? key, required this.photoURL, required this.author, required this.reviewCount, required this.photosCount, required this.miniTitle}) : super(key: key);

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

    final commentAuthor = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        author,
        style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w200,
            color: Colors.black,
            fontFamily: "Lato"),
        textAlign: TextAlign.left,
      ),
    );

    final reviewInfo = Row(
      children: [
      Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(
          "$reviewCount reviews - $photosCount photos",
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w200,
              color: Colors.grey,
              fontFamily: "Lato"),
          textAlign: TextAlign.left,
        ),
      )
      ],
    );

    final reviewTitle = 
      Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(
          miniTitle,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w200,
              color: Colors.black,
              fontFamily: "Lato"),
          textAlign: TextAlign.left,
        ),
      );

    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Column(
      children: [
        Row(children: [textReview]),
        Row(children: [
          avatarCircle, 
          Column(children: [
          commentAuthor,
          Row(children: [
            reviewInfo,
            const Stars(starNumber: 2)],
          ),
          reviewTitle],
          ),
        ]),
      ],
    )
    );
  }
}
