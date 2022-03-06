import 'package:ebuy/Pages/Profile/EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 50,
                child: Icon(Icons.person,size:50,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Jan Mahbub Milon",style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold
                  ), ),
                  const Text("jan.milon.56@gmail.com",style: TextStyle(
                      fontSize: 14)),
                  const SizedBox(height: 15,),
                  InkWell(
                    onTap: (){

                      Get.to(const EditProfile());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 30,
                      width: 80,
                      child: const Center(child: Text("Edit Profile")),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
