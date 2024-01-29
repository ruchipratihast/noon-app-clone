import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noonapp/views/home/ProductDetails.dart';

class RecommendedProducts extends StatefulWidget {
  const RecommendedProducts({super.key});

  @override
  State<RecommendedProducts> createState() => _RecommendedProductsState();
}

class _RecommendedProductsState extends State<RecommendedProducts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView(
        padding: const EdgeInsets.all(
          8.0,
        ),
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(
            width: 8.0,
          ),
          //
          ProductCard(
            url: 'assets/appliances.png',
            toptext: "Hot",
            title: "Nice Home Appliances",
            sp: 12000,
            mrp: 10000,
            rating: 4.5,
            users: 1.3,
          ),
          //
          SizedBox(
            width: 8.0,
          ),
          //
          //
          ProductCard(
            url: 'assets/mobile.png',
            toptext: "New Arrival",
            title: "Nice Home Appliances",
            sp: 20000,
            mrp: 30000,
            rating: 4.7,
            users: 1.9,
          ),
          //
          SizedBox(
            width: 8.0,
          ),

          //
          ProductCard(
            url: 'assets/mobile.png',
            toptext: "New Arrival",
            title: "Lenovo Yoga i5 7th gen",
            sp: 28000,
            mrp: 39000,
            rating: 4.1,
            users: 2.9,
          ),
          //
          SizedBox(
            width: 8.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          //
          ProductCard(
            url: 'assets/appliances.png',
            toptext: "Hot",
            title: "Nice Home Appliances",
            sp: 12000,
            mrp: 10000,
            rating: 4.5,
            users: 1.3,
          ),
          //
          SizedBox(
            width: 8.0,
          ),
          //
          //
          ProductCard(
            url: 'assets/mobile.png',
            toptext: "New Arrival",
            title: "Nice Home Appliances",
            sp: 20000,
            mrp: 30000,
            rating: 4.7,
            users: 1.9,
          ),
          //
          SizedBox(
            width: 8.0,
          ),

          //
          ProductCard(
            url: 'assets/mobile.png',
            toptext: "New Arrival",
            title: "Lenovo Yoga i5 7th gen",
            sp: 28000,
            mrp: 39000,
            rating: 4.1,
            users: 2.9,
          ),
          //
          SizedBox(
            width: 8.0,
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String url;
  final String toptext;
  final String title;
  final double sp;
  final double mrp;
  final double rating;
  final double users;
  const ProductCard({
    super.key,
    required this.url,
    required this.toptext,
    required this.title,
    required this.sp,
    required this.mrp,
    required this.rating,
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          () => ProductDetail(
            title: title,
            mrp: mrp,
            sp: sp,
            rating: rating,
            users: users,
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 7.0,
        ),
        width: 155.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 170.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10.0,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 12.0,
                        ),
                        child: Text(
                          toptext,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 150.0,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 150.0,
              child: Row(
                children: [
                  const Text(
                    "AED",
                    style: TextStyle(
                      fontSize: 12.0,
                      height: 1.1,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    sp.toString(),
                    style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                      height: 1.1,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            SizedBox(
              width: 150.0,
              child: Row(
                children: [
                  Text(
                    mrp.toString(),
                    style: const TextStyle(
                      fontSize: 12.0,
                      height: 1.1,
                      decoration: TextDecoration.lineThrough,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    "${(((sp - mrp) / sp) * 100).toStringAsFixed(0)}% OFF",
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      height: 1.1,
                      color: Colors.green,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://www.pngfind.com/pngs/m/491-4911303_express-logo-png-transparent-png.png",
                  width: 50.0,
                ),
                //
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(
                          4.0,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 1.0,
                        horizontal: 4.0,
                      ),
                      child: Text(
                        rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                        ),
                      ),
                    ),
                    Text(
                      " (${users}K)",
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
