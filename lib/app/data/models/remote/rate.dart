class Rates {
  final int? hourly;
  final int? daily;
  final int? weekly;

  Rates({
    this.hourly,
    this.daily,
    this.weekly,
  });

  factory Rates.fromJson(Map<String, dynamic> json) => Rates(
    hourly: json["hourly"],
    daily: json["daily"],
    weekly: json["weekly"],
  );

  Map<String, dynamic> toJson() => {
    "hourly": hourly,
    "daily": daily,
    "weekly": weekly,
  };
}