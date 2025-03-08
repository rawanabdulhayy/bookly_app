import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //this change contradicts the constancy of the material app
      theme: ThemeData().copyWith(
        //dynamicity among colors and themes is better than hard coding for change of requirements.
        scaffoldBackgroundColor: kPrimaryColor,
    ),
      home: const SplashView(),
    );
  }
}
