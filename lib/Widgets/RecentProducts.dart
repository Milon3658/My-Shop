import 'dart:convert';
import 'package:ebuy/Controller/cartcontroller.dart';
import 'package:ebuy/Models/ProductModel.dart';
import 'package:ebuy/Pages/ProductDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

Future<List<ProductModel>> getAllData() async {
  var api = "https://fakestoreapi.com/products";

  var data = await http.get(Uri.parse(api));

  var jsondata = jsonDecode(data.body);

  List<ProductModel> listof = [];

  for (var i in jsondata) {
    ProductModel productModel = ProductModel.fromJson(i);
    listof.add(productModel);
  }

  return listof;
}

class RecentProducts extends StatefulWidget {
  const RecentProducts({Key? key}) : super(key: key);

  @override
  State<RecentProducts> createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAllData(),
      builder: (BuildContext c, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return SingleChildScrollView(
            child: GridView.builder(
                // scrollDirection:Axis.vertical,
                primary: false,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 20,
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 20),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext c, int index) {
                  return SingleProduct( productModel: snapshot.data[index],
                  );
                }),
          );
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  ProductModel productModel;

  SingleProduct(
      {required this.productModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetails(
                  product_details_name: productModel.title,
                  product_details_price: productModel.price.toString(),
                  product_details_Image: productModel.image,
                  product_details_disccriprion: productModel.description.toString(),
                )));
      },
      child: GridTile(
          footer: Container(
              color: Colors.black45,
              height: 50,
              child: ListTile(
                leading: const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                title: Text(
                  "\$${productModel.price.toString()}",
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                // subtitle: Text(Price.toString()),
                trailing: InkWell(
                  onTap: (){
                    CartController.to.cartlist.add(productModel);
                  },
                  child: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                ),
              )),
          child: Image.network(
            productModel.image.toString(),
            fit: BoxFit.cover,
          )),
    );
  }
}
