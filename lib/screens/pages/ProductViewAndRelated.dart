import 'package:flutter/material.dart';
import 'package:foodie/constants/Colors.dart';
import 'package:foodie/constants/ListOfItems.dart';
import 'package:foodie/constants/widget.dart';

class ProductViewAndRelated extends StatefulWidget {
  const ProductViewAndRelated({super.key, this.items});

  final ProductItems? items;

  @override
  State<ProductViewAndRelated> createState() => _ProductViewAndRelatedState();
}

class _ProductViewAndRelatedState extends State<ProductViewAndRelated> {
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
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(true),
            child: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
          actions: actions,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate(
                      [productMainCard(context, items: widget.items)])),
              SliverList.builder(
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return productMainCard(context, items: productList[index]);
                  }),
            ],
          ),
        ));
  }

  List<Widget> actions = [
    CircleAvatar(
      backgroundColor: Colors.black.withOpacity(0.5),
      child: const Icon(
        Icons.search_rounded,
        color: whiteColor,
      ),
    ),
    SizedBox(
      width: 10,
    ),
    Stack(children: [
      CircleAvatar(
        backgroundColor: Colors.black.withOpacity(0.5),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: whiteColor,
            )),
      ),
      const Positioned(
          top: 5,
          right: 7,
          child: CircleAvatar(
            backgroundColor: redColor,
            radius: 6,
          ))
    ]),
    PopupMenuButton(
        offset: const Offset(-20, 50),
        color: Colors.transparent,
        icon: CircleAvatar(
          backgroundColor: Colors.black.withOpacity(0.5),
          child: const Icon(
            Icons.more_horiz,
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
  ];
}
