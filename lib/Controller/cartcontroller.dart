import 'package:ebuy/Models/ProductModel.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  static CartController to = Get.find();
  RxList<ProductModel> cartlist = RxList<ProductModel>();
}