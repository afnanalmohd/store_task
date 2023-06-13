import 'package:product/features/store/model/rating_model.dart';

class ProductsModel{

  final int id ;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final RatingModel? productsModel;
  //final List<RatingModel> productsModel;

  ProductsModel({
      required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image ,
      required this.productsModel,
      });


  factory ProductsModel.fromJason(Map<String, dynamic> json) {
    return ProductsModel(
      id: json["id"],
      title: json["title"],
      price: json["price"].toString(),
      description: json["description"],
      category: json["category"],
      image: json["image"],
      productsModel: json["rating"] != null ? RatingModel.fromJason(json["rating"]): null
    );
  }

  Map<String, dynamic> toJson() => {
    "id" :id,
    "title":title,
    "price":price,
    "description":description,
    "category":category,
    "image":image,
    "rating":productsModel,
  };
}
