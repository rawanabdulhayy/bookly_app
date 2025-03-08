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
      //this change contradicts the constancy of the material app by changing the default theme config.
      //we have to check the general theme bta3 el design beforehand (3an tre2 l most commons fl icons wltext) w n copyWith 3alatul and change the necessary bas.
      //blash n customize everything from scratch
      //ThemeData.dark() for dark theme
      theme: ThemeData.dark().copyWith(
        //dynamicity among colors and themes is better than hard coding for change of requirements.
        scaffoldBackgroundColor: kPrimaryColor,
    ),
      home: const SplashView(),
    );
  }
}
