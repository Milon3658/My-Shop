import 'package:ebuy/Pages/Authentication/LoginPage.dart';
import 'package:ebuy/Pages/Authentication/SingUP.dart';
import 'package:ebuy/Widgets/cart_button.dart';
import 'package:ebuy/Widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffCC143C),
        title: const Text("Profile"),
      ),
      body: Column(
        children: [
          const ProfileHeader(),
          const Divider(color: Colors.black,),
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Billing Address ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ), )),
          ),
          const Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.grey.withOpacity(0.5),
                ),
                child: const Center(child: Text("Hatikumrul, Sirajganj, Rajsgahi, Bangladesh "))),
          ),
          const Divider(color: Colors.black, height: 20,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Order Address ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ), )),
          ),
          const Divider(color: Colors.black, height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: const Center(child: Text("Hatikumrul, Sirajganj, Rajsgahi, Bangladesh "))),
          ),

          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
                        Get.to(const LoginPage());
                      },
                      child: CartButton(Icons.person, "Log in")),
                  InkWell(
                      onTap: (){
                        Get.to(const SignUP());
                      },
                      child: CartButton(Icons.person, "Sign UP"))

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
