import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TextEditField extends StatelessWidget {
  const TextEditField({

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