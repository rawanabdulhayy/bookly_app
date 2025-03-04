import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  //Widgets -- more often than not -- should have a const constructor having been a stateless widget that is supposedly immutable for performance issues.
  //so stateful widgets are okay not to be constants?
  //still nope, because the widget object itself should be constant disregarding its associated state object, which is the variable one.
  @override
  Widget build(BuildContext context) {
    return Column(

    );
  }
}
