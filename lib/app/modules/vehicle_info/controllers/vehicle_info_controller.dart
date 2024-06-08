import 'package:get/get.dart';
import 'package:zihad_car_rental/app/data/repository/car_repository.dart';

import '../../../data/models/remote/car.dart';

class VehicleInfoController extends GetxController {

  final isLoading = true.obs;

  final cars = <Car>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCarsData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchCarsData() async {
    final val = await CarRepository.getCars();
    if (val != null) {

      isLoading.value = false;
      cars.value = val;

    }
  }
}
