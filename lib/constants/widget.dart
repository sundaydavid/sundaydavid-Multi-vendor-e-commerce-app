import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodie/constants/ListOfItems.dart';

import 'Colors.dart';

Widget topOperated(BuildContext context, {String? text}) {
  return Container(
    margin: const EdgeInsets.only(top: 10, right: 20),
    decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey))),
    child: Text(
      text!.toUpperCase(),
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

Widget categoryWidget(BuildContext context, {String? text}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    margin: const EdgeInsets.only(top: 13, right: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.withOpacity(0.1),
    ),
    child: Text(
      text!,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
    ),
  );
}

Widget productCarousel(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    color: yellowColor.withOpacity(0.2),
    child: CarouselSlider(
      items: carouselImages.map((e) {
        return Image.asset(
          e,
        );
      }).toList(),
      options: CarouselOptions(
          aspectRatio: 30.0 / 9.0, // adjust this value to change the height
          viewportFraction: 1.0, // set this value to 1.0 to fill the width
          autoPlay: true,
          autoPlayCurve: Curves.bounceIn),
    ),
  );
}

Widget productMainCard(BuildContext context, {ProductItems? items}) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //This image will be a carousel slider type
          Image.asset(
            items?.image ?? "",
            height: MediaQuery.of(context).size.height / 2,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            items?.name ?? "",
            textAlign: TextAlign.start,
            style: const TextStyle(fontWeight: FontWeight.w500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "₦${items?.actualPrice ?? ""}.00",
                textAlign: TextAlign.start,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 2,
                width: 15,
                color: Colors.grey,
              ),
              Text(
                "₦${items?.salePrice ?? ""}.00",
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    decoration: TextDecoration.lineThrough),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Text(
            "Quantity available: ${items?.quantity ?? ""} pieces",
            textAlign: TextAlign.start,
            style: const TextStyle(fontWeight: FontWeight.w500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Verified 3yrs: CN .Guangdong Kual Intelligent Technology Co, Ltd",
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: greenColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add Cart",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: whiteColor),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Chat Now",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Theme.of(context).secondaryHeaderColor),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: redColor,
                  ),
                  child: const Text(
                    "Send Enquiry",
                    style: TextStyle(
                        fontSize: 13,
                        color: whiteColor,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          )
        ],
      ),
    ),
  );
}
