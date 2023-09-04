import 'package:flutter/material.dart';

class DescriptionComponent extends StatelessWidget {
  final String descriptionName;

  const DescriptionComponent({Key? key, required this.descriptionName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionName,
        style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "Lato"),
        textAlign: TextAlign.left,
      ),
    );
  }
}
