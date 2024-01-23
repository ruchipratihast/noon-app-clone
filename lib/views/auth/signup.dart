import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noonapp/views/auth/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/authbg.png',
            ),
            fit: BoxFit.contain,
          ),
        ),
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 32.0,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  "Create an account !",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: Colors.grey.shade900,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Row(
                  children: [
                    Text(
                      "First Name",
                    ),
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Please enter your first name",
                  ),
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Row(
                  children: [
                    Text(
                      "Last Name",
                    ),
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Please enter your last name",
                  ),
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Row(
                  children: [
                    Text(
                      "Email",
                    ),
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Please enter your email",
                  ),
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Row(
                  children: [
                    Text(
                      "Password",
                    ),
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Please enter your Password",
                  ),
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.maxFinite,
                    height: 50.0,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xffced1da),
                    ),
                    child: const Material(
                      type: MaterialType.transparency,
                      child: Text(
                        "Sign Up",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => const LoginPage(),
                        );
                      },
                      child: const Text(
                        " Sign In ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
