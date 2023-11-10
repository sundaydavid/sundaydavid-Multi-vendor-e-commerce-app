import 'package:flutter/material.dart';
import 'package:foodie/constants/Colors.dart';

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                    // color: yellowColor,
                    gradient: LinearGradient(colors: [blueColor, yellowColor])),
                height: 120,
                width: MediaQuery.of(context).size.width,
              ),
              const Positioned(
                left: 10,
                bottom: 5,
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: whiteColor,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                ),
              ),
            ]),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sunday David",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "sundayudoekong@gmail.com",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),

          // ElevatedButton(onPressed: (){},
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: redColor,
          //   elevation: 1,
          // ), child: const Text("Sign in or register", style: TextStyle(
          //     color: whiteColor
          //   ),),
          // )
        ],
      ),
    );
  }
}
