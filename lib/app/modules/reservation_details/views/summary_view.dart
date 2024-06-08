import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/config/app_text_style.dart';
import '../controllers/summary_controller.dart';

class SummaryView extends GetView<SummaryController> {
  const SummaryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reservation Details",
                      style: AppTextStyle.headerTextStyle(),
                    ),
                    Container(height: 1, color: AppColors.barColor),
                    const SizedBox(height: 22),
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Reservation ID"),
                                  Spacer(),
                                  Text("101"),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Text("Pickup Date"),
                                  Spacer(),
                                  Text("11:00 AM ,"),
                                  SizedBox(width: 4.0,),
                                  Text("21 March 2024"),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Text("Dropoff Date"),
                                  Spacer(),
                                  Text("11:00 AM ,"),
                                  SizedBox(width: 4.0,),
                                  Text("21 March 2024"),
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Information",
                      style: AppTextStyle.headerTextStyle(),
                    ),
                    Container(height: 1, color: AppColors.barColor),
                    const SizedBox(height: 22),
        
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("First Name"),
                                  Spacer(),
                                  Text("Rayhan"),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Text("Last Name"),
                                  Spacer(),
                                  Text("Ahmed"),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Text("Email"),
                                  Spacer(),
                                  Text("rayhan@gmail.com"),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Text("Phone"),
                                  Spacer(),
                                  Text("01854823849"),
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vehicle Information",
                      style: AppTextStyle.headerTextStyle(),
                    ),
                    Container(height: 1, color: AppColors.barColor),
                    const SizedBox(height: 22),
        
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Vehicle Type"),
                                  Spacer(),
                                  Text("Sedan"),
                                ],
                              ),
                             SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Text("Vehicle Model"),
                                  Spacer(),
                                  Text("Toyota Camry"),
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Charges Summary",
                      style: AppTextStyle.headerTextStyle(),
                    ),
                    Container(height: 1, color: AppColors.barColor),
                    const SizedBox(height: 22),
        
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text("Charge",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Spacer(),
                                  Text("Total",style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 4.0),
                              Container(height: 1,color: AppColors.barColor,),
                              const SizedBox(height: 3.0),
                              const Row(
                                children: [
                                  Text("Weekly(1 week)"),
                                  Spacer(),
                                  Text("\$9.00"),
                                ],
                              ),
                              const SizedBox(height: 4.0),
                              const Row(
                                children: [
                                  Text("Days(2 days)"),
                                  Spacer(),
                                  Text("\$9.00"),
                                ],
                              ),
                              const SizedBox(height: 4.0),
                              const Row(
                                children: [
        
                                  Text("Collis Damage Walver"),
                                  Spacer(),
                                  Text("\$9.00"),
                                ],
                              ),
                              const SizedBox(height: 4.0),
                              const Row(
                                children: [
        
                                  Text("Net Total",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Spacer(),
                                  Text("\$9.00",style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
