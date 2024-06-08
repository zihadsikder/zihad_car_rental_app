import 'package:get/get.dart';
import 'package:zihad_car_rental/app/modules/customer_information/controllers/customer_information_controller.dart';
import 'package:zihad_car_rental/app/modules/home/controllers/home_controller.dart';
import 'package:zihad_car_rental/app/modules/reservation_details/controllers/summary_controller.dart';
import 'package:zihad_car_rental/app/modules/vehicle_info/controllers/vehicle_info_controller.dart';

import '../../modules/additional_charges/controllers/additional_controller.dart';

class IntBinding extends Bindings {
  @override
  void dependencies() async {
    //await Get.putAsync<AuthCache>(() async => await AuthCache().init());

    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AdditionalController>(() => AdditionalController());
    Get.lazyPut<CustomerInformationController>(() => CustomerInformationController());
    Get.lazyPut<SummaryController>(() => SummaryController());
    Get.lazyPut<VehicleInfoController>(() => VehicleInfoController());
  }
}