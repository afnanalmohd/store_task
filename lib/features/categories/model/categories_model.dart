
class CategoriesModel {

  final String electronics;
  final String jewelery;
  final String mensClothing;
  final String womensClothing;

  CategoriesModel({
   required this.electronics,
   required this.jewelery,
   required this.mensClothing,
   required this.womensClothing
  });


  factory CategoriesModel.fromJason(Map<String, dynamic> json) {
    return CategoriesModel(
        electronics: json["electronics"],
        jewelery: json["jewelery"],
        mensClothing: json["men's clothing"],
        womensClothing: json["women's clothing"],
    );
  }

  Map<String, dynamic> toJson() => {
    "electronics":electronics,
    "jewelery":jewelery,
    "men's clothing":mensClothing,
    "women's clothing":womensClothing
  };
}