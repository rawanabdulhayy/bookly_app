import 'package:bookly/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //same like the splash view, we separate the body into a separate widget and just call it in our main page.
      body: HomeViewBody(),
    );
  }
}
