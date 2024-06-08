import 'package:flutter/material.dart';
import 'package:zihad_car_rental/app/core/config/app_text_style.dart';

import '../constants/app_colors.dart';
import 'package:intl/intl.dart';

class CalenderInputForm extends StatelessWidget {
  const CalenderInputForm({
    super.key,
    required this.headline,
  });

  final String headline;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(headline),
            Icon(
              Icons.star,
              color: AppColors.starColor,
              size: 8,
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    AppColors.primaryColor, // Specify the color of the border
              ),
              borderRadius: BorderRadius.circular(
                  4.0), // Optional: to make the border rounded
            ),
            child: Row(
              children: [
                Text(
                  'Select Date and Time',
                  style: AppTextStyle.hintTextStyle(),
                ),
                const Spacer(),
                IconButton(
                  onPressed:  () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2050),
                    );
                    if (pickedDate != null) {
                      String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                      //controller.dobController.text = formattedDate;
                    }
                  },
                  icon: Icon(Icons.date_range_outlined),
                ),
              ],
            )),
      ],
    );
  }
}
