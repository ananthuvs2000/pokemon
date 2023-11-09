
import 'package:app/modules/home/login/widgets/colors.dart';
import 'package:flutter/material.dart';

class PrimaryElevatedButton extends StatelessWidget {
  const PrimaryElevatedButton({
    required this.onPressed,
    required this.label,
    super.key,
  });
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
