import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  static LoginController to = Get.find<LoginController>();

var email = TextEditingController().obs;
var password = TextEditingController().obs;

}