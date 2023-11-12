import 'package:flutter/material.dart';
import 'package:foodie/constants/Colors.dart';
import 'package:foodie/constants/ListOfItems.dart';
import 'package:foodie/constants/productMoreDetails.dart';
import 'package:foodie/constants/productOverview.dart';
import 'package:foodie/utils/SimpleListing.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, this.items});
  final ProductItems? items;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  ScrollController scrollController = ScrollController();
  bool showBtn = false;

  @override
  void initState() {
    scrollController.addListener(() {
      double showOffset = 10.0;

      if (scrollController.offset > showOffset) {
        showBtn = true;
        setState(() {});
      } else {
        showBtn = false;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: AnimatedOpacity(
        opacity: showBtn ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: FloatingActionButton(
          backgroundColor: redColor,
          onPressed: () {
            scrollController.animateTo(0,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.fastOutSlowIn);
          },
          child: const Icon(
            Icons.arrow_upward,
            size: 32,
            color: whiteColor,
          ),
        ),
      ),
      appBar: AppBar(
          elevation: 0.0,
          scrolledUnderElevation: 0.0,
          backgroundColor: Colors.transparent,
          excludeHeaderSemantics: true,
          title: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: const EdgeInsets.only(
              left: 10,
              right: 2,
            ),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20)),
            child: const TextField(
              readOnly: true,
              style: TextStyle(color: whiteColor),
              cursorColor: whiteColor,
              decoration: InputDecoration(
                  hintText: "Search here...",
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                    color: whiteColor,
                  )),
            ),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(true),
            child: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
          actions: [
            PopupMenuButton(
                offset: const Offset(-20, 50),
                color: Colors.transparent,
                icon: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: const Icon(
                    Icons.more_vert,
                    color: whiteColor,
                  ),
                ),
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.home, color: whiteColor),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: whiteColor),
                          )
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.chat_outlined, color: whiteColor),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Messenger",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: whiteColor),
                          )
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.favorite_outlined, color: whiteColor),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "My favorites",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: whiteColor),
                          )
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.sticky_note_2, color: whiteColor),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Feedback",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: whiteColor),
                          )
                        ],
                      ),
                    ),
                  ];
                })
          ]),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Image.asset(
                          widget.items?.image ?? "",
                          height: MediaQuery.of(context).size.height * 0.45,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: pureYellowColor,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: whiteColor),
                                  )),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: darkYellowColor,
                                  ),
                                  child: const Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: whiteColor),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              const Divider(),
              GFAccordion(
                // showAccordion: true,
                contentBackgroundColor: Theme.of(context).primaryColor,
                title: "Overview",
                contentChild: Column(
                  children: [productOverview(context)],
                ),
              ),
              GFAccordion(
                title: "Details",
                contentChild: Column(
                  children: [productMoreDetails(context)],
                ),
              ),
              const Divider(
                height: 50,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Other Product from this Store",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "see all...",
                      ),
                    ],
                  ))
            ])),
            SliverGrid.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.62),
                itemBuilder: (context, index) {
                  return simpleListing(context,
                      name: productList[index].name,
                      image: productList[index].image,
                      price: productList[index].actualPrice);
                })
          ],
        ),
      ),
    );
  }
}
