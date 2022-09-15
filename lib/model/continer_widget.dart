import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  const ContainerWidget({
    super.key, required this.colour, required this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      height: 249.50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(20.0)
        ),
      child: cardChild,
    );
  }
}
