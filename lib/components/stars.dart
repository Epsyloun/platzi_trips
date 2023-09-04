import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final double starNumber;

  const Stars({Key? key, required this.starNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Widget de la estrella LLENA
    final starIcon = Container(
      margin: const EdgeInsets.only(top: 324.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    //Widget de la estrella MEDIA
    final starIconHalf = Container(
      margin: const EdgeInsets.only(top: 324.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    //Widget de la estrella VACÍA
    final starIconOutlined = Container(
      margin: const EdgeInsets.only(top: 324.0, right: 3.0),
      child: const Icon(
        Icons.star_outline,
        color: Color(0xFFF2C611),
      ),
    );

    List<Widget> buildStars() {
      List<Widget> stars = [];

      // Estrellas completas
      for (var i = 0; i < starNumber.floor(); i++) {
        stars.add(starIcon); // usando el widget predefinido
      }

      // Si hay media estrella
      if (starNumber - starNumber.floorToDouble() >= 0.5) {
        stars.add(starIconHalf); // usando el widget predefinido
      }

      // Estrellas vacías
      while (stars.length < 5) {
        stars.add(starIconOutlined); // usando el widget predefinido
      }

      return stars;
    }

    return Row(
      children: buildStars(),
    );
  }
}
