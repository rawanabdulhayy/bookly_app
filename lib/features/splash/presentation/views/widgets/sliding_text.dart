import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position:
          slidingAnimation, //Animation Object of type offset, so modify the created object type up there.
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
