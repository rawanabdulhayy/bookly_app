import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  //animations require stateful widgets
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //SingleTickerProviderStateMixin handles the animation values change rate.

  late AnimationController animationController;
  //AnimationController provides a value of [0,1]
  //so if I have to change the values provided by the AnimationController, then I need smth to take AnimationController values and maps them to values I can use.
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    //duration with which the tickerProvider keeps refreshing for.
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    //so animationController.value now evaluates for [0,1] values, but what if I need to map this to 60 ticks?
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    //takes as a type the output value type
    //bas mesh hynf3 hena tkun usual types? 34an lvalue el btt8yar fl slideTransition is of type offset -- x and y axes distance change.

    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });

    animationController.forward(); // ✅ Start the animation
  }

  @override
  void dispose() {
    //ay controller 3ndi has to be disposed to prevent memory leakage.
    super.dispose();
    animationController.dispose();
  }

  //Widgets -- more often than not -- should have a const constructor having been a stateless widget that is supposedly immutable for performance issues.
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
        const SizedBox(
          height: 10,
        ),
        //so the text body now takes up the screen width, yet still settles at the start?
        //so it needs to be aligned.

        //we wanna rebuild this specific widget lwa7dha whenever the animation value changes.
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
