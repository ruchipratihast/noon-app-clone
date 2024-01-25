import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      color: const Color(0xFFfef1e1),
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryCard(
            image: "assets/appliances.png",
            title: "Deals",
          ),
          CategoryCard(
            image: "assets/mobile.png",
            title: "Mobiles",
          ),
          CategoryCard(
            image: "assets/electronicAccessories.png",
            title: "Electronics",
          ),
          CategoryCard(
            image: "assets/homeAndKitchen.jpg",
            title: "Home & Kitchen",
          ),
          CategoryCard(
            image: "assets/mobile.png",
            title: "Laptop",
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;

  const CategoryCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  50.0,
                ),
                topRight: Radius.circular(
                  50.0,
                ),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFffa5b1),
                  blurRadius: 1.0,
                  spreadRadius: 0.0,
                  offset: Offset(-5.0, -5.0), // shadow direction: bottom right
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  Color(0xFFffd088),
                  Color(0xFFffc5c1),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            width: 80.0,
            height: 110.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          SizedBox(
            width: 75.0,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w900,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
