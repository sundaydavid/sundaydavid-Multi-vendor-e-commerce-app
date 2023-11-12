import 'package:flutter/material.dart';
import 'package:foodie/constants/Colors.dart';

Widget productOverview(BuildContext context) {
  List<String> cardImages = [
    "assets/images/visa.png",
    "assets/images/master.png",
    "assets/images/paypal.png"
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        "assets/images/iphone.png",
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.45,
        fit: BoxFit.cover,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(10, (index) {
            return Container(
              margin: const EdgeInsets.only(right: 10, top: 3),
              width: 100,
              height: 100,
              child: Image.asset(
                "assets/images/iphone.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            );
          }),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
          "Original iPhone 15 Pro MAX Smartphones 16GB+512GB Internal Storage"),
      const SizedBox(
        height: 15,
      ),
      const Row(
        children: [
          Text("24 orders"),
          SizedBox(
            width: 20,
            child: Text(
              "|",
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "See store reviews",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline),
          ),
        ],
      ),
      const Divider(
        height: 50,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Key attributes",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
      const SizedBox(
        height: 7,
      ),
      const Row(
        children: [
          Text(
            "Cabinet Color: ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Black/Silver/Other",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      const SizedBox(
        height: 7,
      ),
      const Row(
        children: [
          Text(
            "Private Mold: ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "No",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      const SizedBox(
        height: 7,
      ),
      const Row(
        children: [
          Text(
            "Refresh Rate: ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "50/60 Hz",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      const Divider(
        height: 50,
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Purchase details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Text(
                "Protected with 🪧 ",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                "Trade Assurance",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.local_shipping_outlined,
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 3),
            width: MediaQuery.of(context).size.width * 0.72,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    "Trade Assurance",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Text(
                  "Contact supplier to negotiate shipping details",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const Text(
                  "Enjoy On-time Dispatch Guarantee",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 13, color: yellowColor),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.verified_user_outlined,
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 3),
            width: MediaQuery.of(context).size.width * 0.72,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    "Payments",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: List.generate(cardImages.length, (index) {
                        return Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image.asset(
                              cardImages[index].toString(),
                              width: 50,
                              height: 23,
                              fit: BoxFit.cover,
                            ));
                      }),
                    ),
                    const Text(
                      "....",
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const Text(
                  "Enjoy encrypted and secure payments",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),

      SizedBox(
        height: 20,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.settings_backup_restore_sharp,
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 3),
            width: MediaQuery.of(context).size.width * 0.72,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    "Returns and Refunds",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const Text(
                  "Eligible for refunds within 30 days of receiving product",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
      const Divider(
        height: 50,
      ),
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: const Text(
          "Reviews",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Product Reviews",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Column(
            children: List.generate(4, (index){
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: whiteColor,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Theme.of(context).primaryColor,
                            backgroundImage: AssetImage("assets/images/avatar.png") as ImageProvider,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("Sunday David", style: TextStyle(fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Text("I love your product I love your product I love your product",)
                  ],
                ),
              );
            })
          )
        ],
      ),
    ],
  );
}
