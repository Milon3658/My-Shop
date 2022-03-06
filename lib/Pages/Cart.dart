import 'package:ebuy/Controller/cartcontroller.dart';
import 'package:ebuy/Models/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCart extends StatefulWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffCC143C),
        centerTitle: true,
        title: const Text("Cart"),
      ),
      body: ListView.builder(itemBuilder: (_, index){
        ProductModel productModel = CartController.to.cartlist[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child : ListTile(
              title:Text(productModel.title),
              subtitle: Text(productModel.price.toString()),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
            ),
          ),
        );
      },itemCount: CartController.to.cartlist.length),
    );
  }
}
