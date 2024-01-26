import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noonapp/views/home/categories.dart';
import 'package:noonapp/views/home/categories2.dart';
import 'package:noonapp/views/home/recommended.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Top Banner
          Image.asset(
            'assets/banner1.jpg',
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Categories(),
          const Categories2(),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Text(
                "  Recommended For You",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
            ],
          ),
          const RecommendedProducts(),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
