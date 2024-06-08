import 'package:zihad_car_rental/app/core/constants/api_end_points.dart';
import 'package:zihad_car_rental/app/data/models/remote/car.dart';

import '../../services/remote/api_client.dart';
import '../models/remote/base.dart';

class CarRepository {
  Future<List<Car>?> getCars() async {
    final Base? response =
        await BaseClient.safeApiCall(ApiEndPoints.cars_list, RequestType.get);

    if (response != null && response.data != null) {
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;

      final List<Car>? cars =
          List<Car>.from(data["data"]!.map((x) => Car.fromJson(x)));
      return cars;
    }
    return null;
  }
}
