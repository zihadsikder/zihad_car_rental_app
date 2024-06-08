class Base {
  final String? status;
  final String? data;
  final String? message;

  Base({
    this.status,
    this.data,
    this.message,
  });

  factory Base.fromJson(Map<String, dynamic> json) => Base(
        status: json["status"],
        data: json["data"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data,
        "message": message,
      };
}
