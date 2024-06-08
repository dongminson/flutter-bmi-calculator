// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_bmi_calculator/constants.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: fillButtonColor,
      child: Icon(
        icon,
        color: buttonIconColor,
      ),
    );
  }
}
