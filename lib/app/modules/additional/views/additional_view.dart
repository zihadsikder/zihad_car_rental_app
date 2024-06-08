import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/action_button.dart';
import '../../../data/globals/app_colors.dart';
import '../../../data/globals/app_text_style.dart';
import '../../../routes/app_pages.dart';
import '../controllers/additional_controller.dart';

class AdditionalView extends GetView<AdditionalController> {
  const AdditionalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Additional Charges",
                style: AppTextStyle.headerTextStyle(),
              ),
              Container(height: 2, color: AppColors.barColor),
              const SizedBox(height: 22),

              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                           Checkbox(
                             activeColor: AppColors.primaryColor,
                               checkColor: AppColors.barColor,
                               value: controller.value,
                               onChanged:(value){} ),
                            SizedBox(width: 4.0,),
                            Text("Collis Damage Walver"),
                            Spacer(),
                            Text("\$9.00"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: AppColors.primaryColor,
                                checkColor: AppColors.barColor,
                                value: controller.value,
                                onChanged:(value){} ),
                            SizedBox(width: 4.0,),
                            Text("Collis Damage Walver"),
                            Spacer(),
                            Text("\$9.00"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: AppColors.primaryColor,
                                checkColor: AppColors.barColor,
                                value: controller.value,
                                onChanged:(value){} ),
                            SizedBox(width: 4.0,),
                            Text("Collis Damage Walver"),
                            Spacer(),
                            Text("\$9.00"),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
              ActionButton(onPressed: (){
                Get.toNamed(Routes.RESERVATION_DETAILS);
              },)
            ],
          ),
        ),
      ),
    );
  }
}


