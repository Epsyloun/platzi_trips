import 'package:flutter/material.dart';
import 'package:platzi_tripps/components/description.dart';
import 'package:platzi_tripps/components/stars.dart';
import 'package:platzi_tripps/components/title.dart';

class DescriptionWidget extends StatelessWidget {
  //Variables que recibe como parametros
  final String nameSpace;
  final double starNumber;
  final String descriptionName;

  // Description({super.key, this.nameSpace, this.starNumber, this.descriptionName });

  const DescriptionWidget({
    Key? key,
    required this.nameSpace,
    required this.starNumber,
    required this.descriptionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Widget del Texto titulo
    final title = TitleStar(nameSpace: nameSpace);

    //Widget del texto contenido
    final descriptionStar =
        DescriptionComponent(descriptionName: descriptionName);

    //Wrapper de widget de titulo
    final titleWrapper = Row(
      children: [title, Stars(starNumber: starNumber)],
    );
    //Wrapper de widget FINAL del componente
    final descriptionWrapper = Column(
      children: [titleWrapper, descriptionStar],
    );

    return descriptionWrapper;
  }
}
