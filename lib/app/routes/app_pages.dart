import 'package:get/get.dart';

import '../modules/additional/bindings/additional_binding.dart';
import '../modules/additional/views/additional_view.dart';
import '../modules/customer_information/bindings/customer_information_binding.dart';
import '../modules/customer_information/views/customer_information_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/reservation_details/bindings/reservation_details_binding.dart';
import '../modules/reservation_details/views/reservation_details_view.dart';
import '../modules/vehicle_info/bindings/vehicle_info_binding.dart';
import '../modules/vehicle_info/views/vehicle_info_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_INFORMATION,
      page: () => const CustomerInformationView(),
      binding: CustomerInformationBinding(),
    ),
    GetPage(
      name: _Paths.VEHICLE_INFO,
      page: () => const VehicleInfoView(),
      binding: VehicleInfoBinding(),
    ),
    GetPage(
      name: _Paths.ADDITIONAL,
      page: () => const AdditionalView(),
      binding: AdditionalBinding(),
    ),
    GetPage(
      name: _Paths.RESERVATION_DETAILS,
      page: () => const ReservationDetailsView(),
      binding: ReservationDetailsBinding(),
    ),
  ];
}
