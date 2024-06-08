// Flutter imports:
import 'package:flutter/material.dart';

class CardWrapper extends StatelessWidget {
  const CardWrapper(
      {super.key,
      required this.color,
      required this.cardChild,
      required this.onPress});

  final Color color;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: cardChild,
        ));
  }
}
