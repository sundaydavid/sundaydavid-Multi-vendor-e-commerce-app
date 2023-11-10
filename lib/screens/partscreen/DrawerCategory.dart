import 'package:flutter/material.dart';
import 'package:foodie/constants/ListOfItems.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class DrawerCategory extends StatelessWidget {
  const DrawerCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      title: "Categories",
      collapsedIcon: const Icon(Icons.arrow_drop_down),
      expandedIcon: Icon(
        Icons.arrow_drop_up,
        color: Theme.of(context).colorScheme.surface,
      ),
      contentBackgroundColor: Theme.of(context).colorScheme.surface,
      contentChild: Column(
          children: List.generate(categories.length, (index) {
        return categoryItem(
            icon: categories[index].icon, text: categories[index].text);
      })),
    );
  }
}

categoryItem({
  IconData? icon,
  String? text,
}) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(
            width: 20,
          ),
          Text(text!),
        ],
      ),
    ),
  );
}
