import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:noonapp/views/auth/login.dart';
import 'package:noonapp/views/auth/signup.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFefefef),
        child: ListView(
          children: [
            Container(
              width: double.maxFinite,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    "  Hey, Nice to meet you",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "  The region's favourite online marketplace",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(
                            () => const LoginPage(),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(
                                  30.0,
                                ),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.circleUser,
                              ),
                            ),
                            //
                            const SizedBox(
                              height: 8.0,
                            ),
                            //
                            const Text(
                              "Sign In",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(
                            () => const SignUpPage(),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(
                                  30.0,
                                ),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.userGear,
                              ),
                            ),
                            //
                            const SizedBox(
                              height: 8.0,
                            ),
                            //
                            const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            //
            const SizedBox(
              height: 20.0,
            ),
            //
            Text(
              "  SETTINGS",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            const SizedBox(
              height: 12.0,
            ),
            //
            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () {},
                tileColor: Colors.white,
                leading: const Icon(
                  FontAwesomeIcons.globe,
                ),
                title: const Text(
                  "Country",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.caretRight,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () {},
                tileColor: Colors.white,
                leading: const Icon(
                  FontAwesomeIcons.flag,
                ),
                title: const Text(
                  "Language",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.caretRight,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () {},
                // tileColor: Colors.white,

                leading: const Icon(
                  FontAwesomeIcons.bell,
                ),
                title: const Text(
                  "Notifications",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.caretRight,
                ),
              ),
            ),
            //
            const SizedBox(
              height: 20.0,
            ),
            //
            Text(
              "  REACH OUT TO US",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            const SizedBox(
              height: 12.0,
            ),
            //
            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () {},
                tileColor: Colors.white,
                leading: const Icon(
                  FontAwesomeIcons.circleInfo,
                ),
                title: const Text(
                  "Help",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(
                  FontAwesomeIcons.caretRight,
                ),
              ),
            ),
            //
            const SizedBox(
              height: 12.0,
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.facebookF,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.twitter,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.instagram,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.linkedinIn,
                  ),
                ),
              ],
            ),
            //
            const SizedBox(
              height: 20.0,
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Terms Of Use",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Terms Of Sale",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            ),
            //
            const SizedBox(
              height: 12.0,
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Warranty Policy",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Return Policy",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Sell With Us",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
