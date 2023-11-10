import 'package:flutter/material.dart';
import 'package:foodie/constants/Colors.dart';

Widget simpleListing(
  BuildContext context, {
  String? name,
  String? image,
  String? price,
}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.46,
    color: Theme.of(context).primaryColor,
    margin: EdgeInsets.only(right: 20),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            name!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16.5),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            image!,
            height: 180,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '₦${price!}',
            style: TextStyle(
              fontWeight: FontWeight.w300
            ),
          ),
        ],
      ),
    ),
  );
}
