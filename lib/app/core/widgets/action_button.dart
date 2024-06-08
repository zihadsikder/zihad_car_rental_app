import 'package:flutter/material.dart';

import '../../data/globals/app_colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 70,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: AppColors.buttonColor,
        child: const Text(
          'Next',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
