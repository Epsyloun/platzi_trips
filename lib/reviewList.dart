import 'package:flutter/material.dart';
import 'package:platzi_tripps/review.dart';

class ReviewList extends StatelessWidget {
const ReviewList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Column(
      children: [
        Review(
          photoURL: "assets/images/background.png",
          author: "Varuna Yasas",
          reviewCount: 5,
          photosCount: 1,
          miniTitle: "There is amazing place in Sri ianka",
        ),
        Review(
          photoURL: "assets/images/background.png",
          author: "Varuna Yasas",
          reviewCount: 5,
          photosCount: 1,
          miniTitle: "There is amazing place in Sri ianka",
        ),
        Review(
          photoURL: "assets/images/background.png",
          author: "Varuna Yasas",
          reviewCount: 5,
          photosCount: 1,
          miniTitle: "There is amazing place in Sri ianka",
        )
      ],
    );
  }
}