import 'package:ebuy/Controller/LoginController.dart';
import 'package:ebuy/Pages/HomePage.dart';
import 'package:ebuy/Pages/SingUP.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 70,),
               Container(
                 decoration: const BoxDecoration(
                   boxShadow: [
                     BoxShadow(

                     )
                   ]
                 ),
                 child: Image.asset("assets/images/AppLogo.png", height: 150,width: Get.width,fit: BoxFit.cover,),
               ),
                const SizedBox(height: 50,),

                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Enter your Email",style: TextStyle(fontSize: 16),)),
                const SizedBox(height: 10,),
                        TextField(
                          // controller: LoginController.to.email(),
                          obscureText: true,
                          decoration: const InputDecoration(
                            focusColor: Colors.black,
                            border: OutlineInputBorder(),
                          ),
                        ),
                const SizedBox(height: 20,),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Enter your Password",style: TextStyle(fontSize: 16),)),
                const SizedBox(height: 10,),
           TextField(
                  // controller: LoginController.to.password(),
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    Get.to(MainPage());
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffCC143C),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text("log in", style: TextStyle(fontSize: 16, color: Colors.white),)),
                  ),
                ),
                const SizedBox(height: 10,),
                 InkWell(
                   onTap: (){
                     Get.to(SignUP());
                   },
                   child: Row(
                    children: const[
                      Text("Already have an account?", style: TextStyle(fontSize: 16),),
                      SizedBox(width: 10,),
                      Text("Sign up",  style: TextStyle(fontSize: 16, color: Color(0xffCC143C)),),
                    ],
                ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
