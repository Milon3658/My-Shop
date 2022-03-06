import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductColtroller extends GetxController{
  static ProductColtroller to = Get.find<ProductColtroller>();

  var ProductName = TextEditingController().obs;
  var ProductPrice = TextEditingController().obs;

}