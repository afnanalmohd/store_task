import 'package:get/get.dart';
import 'package:product/features/store/logic/controller/store_controller.dart';



class ProductBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(StoreController());
  }
  
}