import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product/core/constants/api_string.dart';
import 'package:product/features/store/logic/service/store_service.dart';
import 'package:product/features/store/model/products_model.dart';
import '../../../categories/model/categories_model.dart';

class StoreController extends GetxController {

  final storeApi = StoreApi();
  var baseUrl = ApiString.baseUrl;


  final Map<String, String> headers = {
    'Access-Control-Allow-Origin': '*',
    'Content-type': 'application/json',
    'Accept': '*/*',
  };

  //fetch data ///
  Future<List<ProductsModel>> getAllData() async {
    List storeList =
        await storeApi.getData(url: '$baseUrl', headers: headers);
    print("from getAllData()");
    storeList.map((store) =>print(ProductsModel.fromJason(store))).toList();
    return storeList.map((store) => ProductsModel.fromJason(store)).toList();
  }


  //fetch data for Categories list //
  Future<List> getAllDataCategories() async {
    List categoriesList =
    await storeApi.getData(url: 'https://fakestoreapi.com/products/categories', headers: headers);
    print(categoriesList);

    return categoriesList;
  }

}
