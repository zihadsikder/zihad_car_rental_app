import 'rate.dart';

class Car {
  final String? id;
  final String? make;
  final String? model;
  final int? year;
  final String? type;
  final int? seats;
  final int? bags;
  final List<String>? features;
  final Rates? rates;
  final String? imageUrl;

  Car({
    this.id,
    this.make,
    this.model,
    this.year,
    this.type,
    this.seats,
    this.bags,
    this.features,
    this.rates,
    this.imageUrl,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        id: json["id"],
        make: json["make"],
        model: json["model"],
        year: json["year"],
        type: json["type"],
        seats: json["seats"],
        bags: json["bags"],
        features: json["features"] == null
            ? []
            : List<String>.from(json["features"]!.map((x) => x)),
        rates: json["rates"] == null ? null : Rates.fromJson(json["rates"]),
        imageUrl: json["imageURL"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "make": make,
        "model": model,
        "year": year,
        "type": type,
        "seats": seats,
        "bags": bags,
        "features":
            features == null ? [] : List<dynamic>.from(features!.map((x) => x)),
        "rates": rates?.toJson(),
        "imageURL": imageUrl,
      };
}
