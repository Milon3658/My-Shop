import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartButton extends StatelessWidget {

  final TypeOfButton;
  final IconforButton;

  CartButton(this.IconforButton, this.TypeOfButton);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffCC143C),
        ),
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Icon(IconforButton, color: Colors.white,),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(TypeOfButton, style: const TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
