import 'package:flutter/material.dart';

List<String> topSelection = ["Categories", "Stores", "Trending", "New Arrived"];

class CategoryData {
  final IconData? icon;
  final String? text;

  CategoryData({this.icon, this.text});
}

List<CategoryData> categories = <CategoryData>[
  CategoryData(icon: Icons.arrow_circle_left, text: "All Category"),
  CategoryData(icon: Icons.headphones, text: "Consumer Electronics"),
  CategoryData(icon: Icons.person, text: "Apparel & Accessories"),
  CategoryData(icon: Icons.kitchen, text: "Home & Garden"),
  CategoryData(
      icon: Icons.sports_football_rounded, text: "Sport & Entertainment"),
  CategoryData(icon: Icons.microwave_rounded, text: "Beauty"),
  CategoryData(icon: Icons.temple_hindu, text: "Industrial Machinery"),
  CategoryData(
      icon: Icons.local_printshop_rounded, text: "Packaging & Printing"),
  CategoryData(icon: Icons.person_pin, text: "Mother, Kids & Toys"),
  CategoryData(icon: Icons.join_inner_sharp, text: "Jewelry, Eyewear..."),
  CategoryData(icon: Icons.snowshoeing, text: "Shoes & Accessories"),
  CategoryData(
      icon: Icons.directions_bike_sharp, text: "Vehicle Parts Accessories"),
  CategoryData(icon: Icons.chair, text: "Furniture"),
];

List<String> carouselImages = [
  "assets/images/001.jpeg",
  "assets/images/002.jpg",
  "assets/images/009.png",
  "assets/images/0050.png",
  "assets/images/0060.png",
];

class FoodListing {
  final String name;
  final String? image;
  final double? price;

  FoodListing({required this.name, this.image, this.price});
}

List<FoodListing> foodList = <FoodListing>[
  FoodListing(name: "Bugar", image: "assets/images/f1.png", price: 2500),
  FoodListing(name: "Pizza", image: "assets/images/f2.jpeg", price: 3500),
  FoodListing(name: "Rice", image: "assets/images/f3.jpg", price: 4500),
  FoodListing(name: "Chicken Rice", image: "assets/images/f4.JPG", price: 2500),
  FoodListing(
      name: "Egusi Soup of Dynamo Life",
      image: "assets/images/f5.jpeg",
      price: 2500),
];

class ProductItems {
  final int? id;
  final int? quantity;
  final String? image;
  final String? name;
  final String? numberOfBuyers;
  final String? date;
  final String? actualPrice;
  final String? salePrice;
  final String? location;

  ProductItems(
      {this.quantity,
      this.id,
      this.image,
      this.name,
      this.numberOfBuyers,
      this.date,
      this.actualPrice,
      this.salePrice,
      this.location});
}

List<ProductItems> productList = <ProductItems>[
  ProductItems(
      quantity: 4,
      id: 1,
      image: "assets/images/iphone.png",
      name:
          "Original iPhone 15 Pro MAX Smartphones 16GB+512GB Internal Storage",
      numberOfBuyers: "1009",
      date: "Month",
      actualPrice: "400,000",
      salePrice: "500,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 2,
      image: "assets/images/005.jpeg",
      name: "A set of Makeup kit with an intrinsic element",
      numberOfBuyers: "109",
      date: "Month",
      actualPrice: "2,000",
      salePrice: "5,000",
      location: "Awka"),
  ProductItems(
      quantity: 4,
      id: 3,
      image: "assets/images/008.jpeg",
      name: "Original apple laptop, just package with good battery health",
      numberOfBuyers: "4409",
      date: "Month",
      actualPrice: "1,000000",
      salePrice: "2,000000",
      location: "Delta"),
  ProductItems(
      quantity: 4,
      id: 4,
      image: "assets/images/007.jpeg",
      name: "Soft drink for your leisure time enjoyment",
      numberOfBuyers: "19",
      date: "Month",
      actualPrice: "900",
      salePrice: "1,200",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 5,
      image: "assets/images/004.jpeg",
      name: "Unisex Sneakers for both indoor and outdoor use",
      numberOfBuyers: "44409",
      date: "Month",
      actualPrice: "12,000",
      salePrice: "18,000",
      location: "Asaba"),
  ProductItems(
      quantity: 4,
      id: 6,
      image: "assets/images/006.jpeg",
      name:
          "Travelling luggage made with good fibre wood for both male and female",
      numberOfBuyers: "1009",
      date: "Month",
      actualPrice: "32,000",
      salePrice: "40,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 7,
      image: "assets/images/003.jpeg",
      name: "Original Nikon camera with 16GB+512GB Internal Storage",
      numberOfBuyers: "109",
      date: "Month",
      actualPrice: "102,000",
      salePrice: "300,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 8,
      image: "assets/images/iphone.png",
      name:
          "Original iPhone 15 Pro MAX Smartphones 16GB+512GB Internal Storage",
      numberOfBuyers: "1009",
      date: "Month",
      actualPrice: "400,000",
      salePrice: "500,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 9,
      image: "assets/images/005.jpeg",
      name: "A set of Makeup kit with an intrinsic element",
      numberOfBuyers: "109",
      date: "Month",
      actualPrice: "2,000",
      salePrice: "5,000",
      location: "Awka"),
  ProductItems(
      quantity: 4,
      id: 10,
      image: "assets/images/008.jpeg",
      name: "Original apple laptop, just package with good battery health",
      numberOfBuyers: "4409",
      date: "Month",
      actualPrice: "1,000000",
      salePrice: "2,000000",
      location: "Delta"),
  ProductItems(
      quantity: 4,
      id: 11,
      image: "assets/images/007.jpeg",
      name: "Soft drink for your leisure time enjoyment",
      numberOfBuyers: "19",
      date: "Month",
      actualPrice: "900",
      salePrice: "1,200",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 12,
      image: "assets/images/004.jpeg",
      name: "Unisex Sneakers for both indoor and outdoor use",
      numberOfBuyers: "44409",
      date: "Month",
      actualPrice: "12,000",
      salePrice: "18,000",
      location: "Asaba"),
  ProductItems(
      quantity: 4,
      id: 13,
      image: "assets/images/006.jpeg",
      name:
          "Travelling luggage made with good fibre wood for both male and female",
      numberOfBuyers: "1009",
      date: "Month",
      actualPrice: "32,000",
      salePrice: "40,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 14,
      image: "assets/images/003.jpeg",
      name: "Original Nikon camera with 16GB+512GB Internal Storage",
      numberOfBuyers: "109",
      date: "Month",
      actualPrice: "102,000",
      salePrice: "300,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 15,
      image: "assets/images/iphone.png",
      name:
          "Original iPhone 15 Pro MAX Smartphones 16GB+512GB Internal Storage",
      numberOfBuyers: "1009",
      date: "Month",
      actualPrice: "400,000",
      salePrice: "500,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 16,
      image: "assets/images/005.jpeg",
      name: "A set of Makeup kit with an intrinsic element",
      numberOfBuyers: "109",
      date: "Month",
      actualPrice: "2,000",
      salePrice: "5,000",
      location: "Awka"),
  ProductItems(
      quantity: 4,
      id: 17,
      image: "assets/images/008.jpeg",
      name: "Original apple laptop, just package with good battery health",
      numberOfBuyers: "4409",
      date: "Month",
      actualPrice: "1,000000",
      salePrice: "2,000000",
      location: "Delta"),
  ProductItems(
      quantity: 4,
      id: 18,
      image: "assets/images/007.jpeg",
      name: "Soft drink for your leisure time enjoyment",
      numberOfBuyers: "19",
      date: "Month",
      actualPrice: "900",
      salePrice: "1,200",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 19,
      image: "assets/images/004.jpeg",
      name: "Unisex Sneakers for both indoor and outdoor use",
      numberOfBuyers: "44409",
      date: "Month",
      actualPrice: "12,000",
      salePrice: "18,000",
      location: "Asaba"),
  ProductItems(
      quantity: 4,
      id: 20,
      image: "assets/images/006.jpeg",
      name:
          "Travelling luggage made with good fibre wood for both male and female",
      numberOfBuyers: "1009",
      date: "Month",
      actualPrice: "32,000",
      salePrice: "40,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 21,
      image: "assets/images/003.jpeg",
      name: "Original Nikon camera with 16GB+512GB Internal Storage",
      numberOfBuyers: "109",
      date: "Month",
      actualPrice: "102,000",
      salePrice: "300,000",
      location: "Atani"),
  ProductItems(
      quantity: 4,
      id: 22,
      image: "assets/images/004.jpeg",
      name: "Unisex Sneakers for both indoor and outdoor use",
      numberOfBuyers: "44409",
      date: "Month",
      actualPrice: "12,000",
      salePrice: "18,000",
      location: "Asaba"),
];
