import 'package:flutter/material.dart';
import 'package:foodie/constants/Colors.dart';
import 'package:foodie/constants/ListOfItems.dart';
import 'package:foodie/screens/pages/ProductViewAndRelated.dart';

Widget normalProductCard(BuildContext context, {ProductItems? items,}) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductViewAndRelated(
                    items: items,
                  )));
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.43,
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                items?.image ?? "",
                height: 170,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                  bottom: -1,
                  right: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        color: yellowColor,
                        size: 35,
                      )))
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  items?.name ?? "",
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: greenColor),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${items?.numberOfBuyers ?? ""}+ bought in past ${items?.date ?? ""}",
                  style: const TextStyle(fontSize: 10),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Transform.translate(
                    offset: const Offset(0.0, -9.0),
                    child: const Text(
                      '₦',
                      style: TextStyle(fontSize: 12),
                    ),
                  )),
                  TextSpan(
                    text: items?.actualPrice ?? "",
                    style: TextStyle(
                      fontSize: 20,
                      color: yellowColor,
                    ),
                  ),
                  WidgetSpan(
                      child: Transform.translate(
                    offset: const Offset(0.0, -10.0),
                    child: const Text(
                      '00',
                      style: TextStyle(fontSize: 12),
                    ),
                  )),
                ])),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: MediaQuery.of(context).size.width,
                  child: RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: 'List: ',
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                        text: '₦${items?.salePrice ?? ""}.00',
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
