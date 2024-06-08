import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zihad_car_rental/app/core/constants/app_assets.dart';
import 'package:zihad_car_rental/app/modules/vehicle_info/views/vehicle_widget.dart';

import '../../../core/widgets/action_button.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/config/app_text_style.dart';
import '../../../routes/app_pages.dart';
import '../controllers/vehicle_info_controller.dart';

class VehicleInfoView extends GetView<VehicleInfoController> {
  const VehicleInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Vehicle Information",
                  style: AppTextStyle.headerTextStyle(),
                ),
                Container(height: 2, color: AppColors.barColor),
                const SizedBox(height: 22),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Vehicle Type'),
                      const SizedBox(height: 8.0),
                      DropdownButtonFormField<String>(
                        items: <String>['Sedan', 'SUV', 'Truck', 'Van']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          const Text('Vehicle Model'),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 8,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: AppColors.barColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Obx(
                  () => controller.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.cars.value.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final car = controller.cars.value[index];
            
                            return VehicleWidget(car: car);
                          },
                        ),
                ),
                ActionButton(
                  onPressed: () {
                    Get.toNamed(Routes.ADDITIONAL);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
