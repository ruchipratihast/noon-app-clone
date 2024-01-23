import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noonapp/views/auth/account.dart';
import 'package:noonapp/views/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AccountPage(),
    );
  }
}
