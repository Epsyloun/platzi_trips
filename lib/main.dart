import 'package:flutter/material.dart';
import 'package:platzi_tripps/descriptionWidget.dart';
import 'package:platzi_tripps/review.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Share"),
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),
        body: const Column(
          children: [
            DescriptionWidget(
                nameSpace: "Duwili Ella",
                starNumber: 3.5,
                descriptionName:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit."),
            Review(photoURL: "assets/images/background.png")
          ],
        ),
      ),
    );
  }
}
