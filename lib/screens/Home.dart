import 'package:flutter/material.dart';
import 'package:foodie/constants/Colors.dart';
import 'package:foodie/constants/Labels.dart';
import 'package:foodie/constants/ListOfItems.dart';
import 'package:foodie/constants/StringsData.dart';
import 'package:foodie/constants/widget.dart';
import 'package:foodie/screens/partscreen/CustomerProfile.dart';
import 'package:foodie/screens/partscreen/DrawerCategory.dart';
import 'package:foodie/screens/partscreen/DrawerItems.dart';
import 'package:foodie/utils/ProductCard.dart';
import 'package:foodie/utils/SimpleListing.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        floatingActionButton: AnimatedOpacity(
          opacity: showBtn ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 1000),
          child: FloatingActionButton(
            backgroundColor: redColor,
            onPressed: () {
              scrollController.animateTo(0,
                  duration: const Duration(milliseconds: 1500),
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
          title: gradientText(text: appName),
          elevation: 0.5,
          actions: actions,
        ),
        drawer: const Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [CustomerProfile(), DrawerCategory(), DrawerItems()],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                productCarousel(context),
                topCat(context),
                const Divider(
                  height: 15,
                ),
                normalCateroty(context),
                seemsHungry(context),
                justForYouHeader(context),
              ])),
              justForYouBody(context)
            ],
          ),
        ));
  }

  seemsHungry(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Seems Hungry?",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Icon(Icons.arrow_forward)
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(foodList.length, (index) {
                return simpleListing(context,
                    name: foodList[index].name,
                    image: foodList[index].image,
                    price: foodList[index].price.toString());
              }),
            ),
          )
        ],
      ),
    );
  }

  topCat(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(topSelection.length, (index) {
        return topOperated(context, text: topSelection[index].toString());
      })),
    );
  }

  normalCateroty(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(categories.length, (index) {
        return categoryWidget(context, text: categories[index].text);
      })),
    );
  }

  justForYouHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Just for you",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }

  justForYouBody(BuildContext context) {
    return SliverGrid.builder(
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 15,
            childAspectRatio: 0.51),
        itemBuilder: (context, index) {
          return normalProductCard(context, items: productList[index]);
        });
  }

  List<Widget> actions = [
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search_sharp,
          size: 32,
        )),
    Stack(children: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            size: 32,
          )),
      Positioned(
          top: 9,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: redColor,
            ),
            height: 19,
            width: 19,
            child: const Text(
              "3",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ))
    ]),
    Stack(children: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            size: 28,
          )),
      Positioned(
          top: 8,
          right: 9,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: redColor,
            ),
            height: 19,
            width: 19,
            child: const Text(
              "8",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ))
    ]),
  ];
}
