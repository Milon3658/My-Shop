import 'package:ebuy/Widgets/cart_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductDetails extends StatelessWidget {

  final String product_details_name;
  final String product_details_price;
  final String product_details_Image;
  final String product_details_disccriprion;


  ProductDetails(
      {required this.product_details_name,
      required this.product_details_Image,
      required this.product_details_price,
      required this.product_details_disccriprion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffCC143C),
        title: const Text("Product Details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: Get.width,
            child: Image.network(
              product_details_Image,
            ),
          ),
          const Divider(color: Colors.black, height: 30,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Product Details",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
          ),
          const Divider(color: Colors.black, height: 30,),
          Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Name :  ${product_details_name}", style:const TextStyle(fontWeight:FontWeight.bold, fontSize: 16),),)),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Price : \$ ${product_details_price}", style: const TextStyle(fontWeight:FontWeight.bold, fontSize: 16),)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Description :  ${product_details_disccriprion}", style: const TextStyle(fontWeight:FontWeight.bold, fontSize: 16),)),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 // const Padding(
                 //    padding: const EdgeInsets.symmetric(horizontal: 10),
                 //    child: Icon(Icons.favorite_border, size: 30,color: Colors.red,),
                 //  ),
                  CartButton(Icons.add_shopping_cart, "Add to Cart"),
                  // const SizedBox(width: 20,),
                  CartButton(Icons.shopping_bag_outlined, "Buy Now")

                ],
              ),
            ),
          )
        ],
      ),
    );;
  }
}
