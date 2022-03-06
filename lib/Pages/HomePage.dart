import 'package:ebuy/Pages/Cart.dart';
import 'package:ebuy/Pages/CategoriesPage.dart';
import 'package:ebuy/Pages/FavoritePage.dart';
import 'package:ebuy/Pages/ProductDetails.dart';
import 'package:ebuy/Pages/ProfilePage.dart';
import 'package:ebuy/Widgets/RecentProducts.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(currentAccountPicture: Image.asset("assets/images/AppLogo.png") ,accountName:  Text("Jan Mahbub Milon"), accountEmail: Text("jan.milon.56@gmail.com")),
              InkWell(
                onTap: (){
                  Get.to(const ProfilePage());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: Text("Profile"),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              InkWell(
                onTap: (){
                  Get.to(Categories());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.category,
                    color: Colors.black,
                  ),
                  title: Text("Category"),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              InkWell(
                onTap: (){
                  Get.to(const AddCart());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  title: Text("Cart"),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              InkWell(
                onTap: (){
                  Get.to(const FavoritePage());
                },
                child:const ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Favorite",
                  ),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              InkWell(
                onTap: (){},
                child: const ListTile(
                  leading: Icon(
                    Icons.privacy_tip,
                    color: Colors.red,
                  ),
                  title: Text("Privacy Policy"),
                ),
              ),
              InkWell(
                onTap: (){},
                child:const ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.blue,
                  ),
                  title: Text("Help"),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
             InkWell(
               onTap: (){
                 Get.to(AddCart());
               },
               child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.shopping_cart, color: Colors.white,),
            ),
             ),
          ],
          backgroundColor: const Color(0xffCC143C),
          centerTitle: true,
          title: const Text("eBuy"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                    items: [
                      Image.network(
                        "https://thumbs.dreamstime.com/b/male-model-fashion-modern-clothes-urban-landscape-beauty-style-youth-men-58434711.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA-tVHoUN5Z01Cvxa8veAl4NxLEdvgLtNM_g&usqp=CAU",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://images.squarespace-cdn.com/content/v1/52d2ebb3e4b06f22d60562c5/1415130399409-5BF13JCEL4H2A3BCNCXT/Adam-Jacobs-Photography-Mens-Fashion-Model_Dale-Toogood.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://image.shutterstock.com/image-photo/beauty-sexy-fashion-model-girl-260nw-599068877.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      // autoPlay: true,
                      // autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      // autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
                const Divider(
                  color: Colors.black,
                  height: 20,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recent Products",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                const Divider(
                  color: Colors.black,
                  height: 20,
                ),
                RecentProducts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
