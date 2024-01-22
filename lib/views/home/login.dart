import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noonapp/views/home/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            fit: BoxFit.fitHeight,
          ),
        ),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
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
                  "Hey, Welcome Back !",
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
                const Row(
                  children: [
                    Text(
                      "Forgot your password ?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
                        "Sign In",
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
                      "Don't have an account? ",
                      style: TextStyle(),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => const SignUpPage(),
                        );
                      },
                      child: const Text(
                        "Sign Up ?",
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
