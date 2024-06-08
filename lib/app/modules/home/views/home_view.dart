import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zihad_car_rental/app/data/globals/app_colors.dart';
import 'package:zihad_car_rental/app/data/globals/app_text_style.dart';
import 'package:zihad_car_rental/app/routes/app_pages.dart';

import '../../../core/widgets/TestEDate.dart';
import '../../../core/widgets/TextEForm.dart';
import '../../../core/widgets/action_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: SafeArea(
        
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60,),
                Text(
                  "Reservation Details",
                  style: AppTextStyle.headerTextStyle(),
                ),
                Container(height: 2, color: AppColors.barColor),
                const SizedBox(height: 22,),
                Container(
                  padding:const EdgeInsets.all(16.0) ,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primaryColor
                    ),
                    borderRadius: BorderRadius.circular(4.0)
                  ),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextEForm(
                        label: '',
                        headline: 'Reservation ID',
                      ),
                      const SizedBox(height: 8.0),
                      const TextEDateForm(headline: 'Pickup Date'),
                      const SizedBox(height: 8.0),
                      const TextEDateForm(headline: 'Return Date'),
                      const SizedBox(height: 16.0),
                      Row(
                        children: [
                          const Text('Duration'),
                          SizedBox(width: 80), // Adjust spacing if needed
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide( // Define the border style
                                    color: Colors.blue, // Choose your desired color
                                    width: 2, // Choose your desired width
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
        
                      const TextEForm(
                        headline: 'Discount',
                        label: '',
                      ),
        
        
                    ],
                  ),
                ),

                ActionButton(onPressed: (){Get.toNamed(Routes.CUSTOMER_INFORMATION);},)
              ],
            ),
          ),
        ),
      ),


    );
  }
}


