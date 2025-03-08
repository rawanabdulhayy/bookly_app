import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  //Widgets -- more often than not -- should have a const constructor having been a stateless widget that is supposedly immutable for performance issues.
  //so stateful widgets are okay not to be constants?
  //still nope, because the widget object itself should be constant disregarding its associated state object, which is the variable one.
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //so all column children take the column width (which is the scaffold's -- the column's parent.
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          height: 50,
          width: 100,
        ),
        const SizedBox(height: 10,),
        //so the text body now takes up the screen width, yet still settles at the start?
        //so it needs to be aligned.
        const Text('Read Free Books',
        textAlign: TextAlign.center,),
      ],
    );
  }
}
