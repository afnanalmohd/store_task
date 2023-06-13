import 'dart:ffi';

class RatingModel{
  final String rate;
  final  int count;

  RatingModel({
    required this.rate,
    required this.count
  });

  factory RatingModel.fromJason(Map<String, dynamic> json) {
    return RatingModel(
      rate: json["rate"].toString(),
      count: json["count"],
    );
  }

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "count": count,
  };
}
