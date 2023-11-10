import 'package:flutter/material.dart';
import 'package:foodie/constants/StringsData.dart';

import '../../constants/Colors.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems({super.key});

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Column(
            children: [
              drawerItems(text: "My orders", icon: Icons.edit_calendar),
              drawerItems(text: "My favorites", icon: Icons.favorite_border),
              drawerItems(
                  text: "Inquiries", icon: Icons.forward_to_inbox_outlined),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              drawerItems(
                  text: "My coupons",
                  icon: Icons.panorama_vertical_select_outlined),
              drawerItems(text: "My reviews", icon: Icons.rate_review),
              drawerItems(
                  text: "Start selling on $appName now",
                  icon: Icons.person_pin_outlined),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              drawerItems(text: "Delivery address", icon: Icons.location_pin),
              drawerItems(text: "My catalogs", icon: Icons.class_),
              drawerItems(
                  text: "App feedback", icon: Icons.question_answer_sharp),
              drawerItems(text: "Help center", icon: Icons.help),
              drawerItems(text: "Settings", icon: Icons.settings),
            ],
          ),
        ],
      ),
    );
  }
}

drawerItems({
  IconData? icon,
  String? text,
}) {
  return InkWell(
    focusColor: blueColor,
    onTap: () {},
    child: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Icon(icon),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  text!,
                  style: const TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
