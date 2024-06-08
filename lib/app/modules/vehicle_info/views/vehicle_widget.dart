import 'package:flutter/material.dart';

import '../../../core/config/app_text_style.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/models/remote/car.dart';

class VehicleWidget extends StatelessWidget {
  const VehicleWidget({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets.car,
                height: 180,
                width: 200,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    car.model ?? 'model',
                    style: AppTextStyle.headerTextStyle(),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.person, color: Colors.grey),
                      Text(
                        '${car.seats?.toString() ?? '0'} seats',
                        style: AppTextStyle.hintTextStyle(),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.shopping_bag, color: Colors.grey),
                      Text(
                        '${car.bags ?? '0'} bags',
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 2,
            color: AppColors.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${car.rates?.hourly.toString() ?? '0'}/Hour',
                ),
                Text(
                  '\$${car.rates?.daily.toString() ?? '0'}/Day',
                ),
                Text(
                  '\$${car.rates?.weekly.toString() ?? '0'}/Week',
                ),
              ],
            ),
          )
        ],
      ),
    );
    //return SizedBox(height: 14,);
  }
}
