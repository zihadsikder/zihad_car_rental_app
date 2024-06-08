import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/TextEForm.dart';
import '../../../core/widgets/action_button.dart';
import '../../../data/globals/app_colors.dart';
import '../../../data/globals/app_text_style.dart';
import '../../../routes/app_pages.dart';
import '../controllers/customer_information_controller.dart';

class CustomerInformationView extends GetView<CustomerInformationController> {
  const CustomerInformationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Back'),
        ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Customer Information",
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextEForm(
                      label: '',
                      headline: 'First Name',
                    ),
                    SizedBox(height: 8.0),

                    TextEForm(
                      headline: 'Last Name',
                      label: '',
                    ),
                    SizedBox(height: 8.0),

                    TextEForm(
                      headline: 'Email',
                      label: '',
                    ),
                    SizedBox(height: 8.0),

                    TextEForm(
                      headline: 'Phone',
                      label: '',
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
              ActionButton(onPressed: (){
                Get.toNamed(Routes.VEHICLE_INFO);

              },)

            ],
          ),
        ),
      ),

    );
  }
}
