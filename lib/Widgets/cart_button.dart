import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartButton extends StatelessWidget {

  final TypeOfButton;
  final IconforButton;

  CartButton(this.IconforButton, this.TypeOfButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // width: Get.width,
      color: Colors.red,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(IconforButton, color: Colors.white,),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(TypeOfButton, style: const TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
