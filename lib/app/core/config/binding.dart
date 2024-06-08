import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:zihad_car_rental/app/modules/additional/controllers/additional_controller.dart';
import 'package:zihad_car_rental/app/modules/customer_information/controllers/customer_information_controller.dart';
import 'package:zihad_car_rental/app/modules/home/controllers/home_controller.dart';
import 'package:zihad_car_rental/app/modules/reservation_details/controllers/reservation_details_controller.dart';
import 'package:zihad_car_rental/app/modules/vehicle_info/controllers/vehicle_info_controller.dart';

class IntBinding extends Bindings {
  @override
  void dependencies() async {
    //await Get.putAsync<AuthCache>(() async => await AuthCache().init());

    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AdditionalController>(() => AdditionalController());
    Get.lazyPut<CustomerInformationController>(() => CustomerInformationController());
    Get.lazyPut<ReservationDetailsController>(() => ReservationDetailsController());
    Get.lazyPut<VehicleInfoController>(() => VehicleInfoController());
  }
}