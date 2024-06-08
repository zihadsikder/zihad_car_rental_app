import 'package:flutter/material.dart';

import '../../data/globals/app_colors.dart';

class TextEForm extends StatelessWidget {
  const TextEForm({

    required this.label,
    super.key, required this.headline,
  });
  final String? label;
  final String headline;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(headline),
            Positioned(
              right: 0,
              top: -4,
              child: Icon(
                Icons.star,
                color: AppColors.starColor,
                size: 8,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0,),
        TextFormField(
          decoration: InputDecoration(
              hintText: label
          ),
        ),
      ],
    );
  }
}