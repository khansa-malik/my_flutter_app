import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/country_token_page.dart';  // Adjust import based on your folder structure

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountryTokenPage(),
    );
  }
}
