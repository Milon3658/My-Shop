import 'dart:convert';

import 'package:ebuy/Models/ProductModel.dart';
import 'package:ebuy/Pages/ProductDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<ProductModel>> getAllData() async {
  var api = "https://fakestoreapi.com/products";

  var data = await http.get(Uri.parse(api));

  var jsondata = jsonDecode(data.body);

  // print(jsondata);

  List<ProductModel> listof = [];

  for (var i in jsondata) {
    ProductModel productModel = ProductModel.fromJson(i);
    print(i);
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
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 20,
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 20),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext c, int index) {
                  return SingleProduct(
                    discription: snapshot.data[index].description,
                    Name: snapshot.data[index].title,
                    Price: snapshot.data[index].price,
                    ProdImage: snapshot.data[index].image,
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
  final String Name;
  final double Price;
  final String ProdImage;
  final String discription;

  SingleProduct(
      {required this.Name, required this.Price, required this.ProdImage, required this.discription});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductDetails(
          product_details_name: Name,
          product_details_price: Price.toString(),
          product_details_Image: ProdImage,
          product_details_disccriprion: discription.toString(),
        )));
      },
      child: GridTile(
        footer: Container(
          color: Colors.black45,
          height: 50,
          child: ListTile(
            leading: const Icon(Icons.favorite_border, color: Colors.red,),
            title: Text("\$${Price.toString()}", style: const TextStyle(color: Colors.white,fontSize: 14),),
            // subtitle: Text(Price.toString()),
            trailing: const Icon(Icons.add_shopping_cart, color: Colors.red,),
          )
        ),
          child: Image.network(
        ProdImage.toString(),
        fit: BoxFit.cover,
      )),
    );
  }
}
