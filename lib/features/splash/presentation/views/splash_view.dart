import 'package:bookly/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: Column(
      //   children: [
      //     //nested widgets aren't the best approach performance wise because whenever you wanna rebuild a widget
      //     //for any reasons, this calls the nearest build function and rebuilds everything beneath
      //     //so for a better approach, have the "nested widgets" each have its own build method as much as you can
      //     //this approach also allows you to add whatsoever needed (blocbuilders for instance) in the page without much clutter
      //   ],
      // ),

      // backgroundColor: Color(0xff100B20),
      //yet this is supposed to be the united background color all over the application.
      //so it doesn't make sense for me to have it hardcoded in each scaffold's backgroundColor.
      //instead override the default scaffold backgroundColor in the main file and use it.
      body: SplashViewBody(),
    );
  }
}
