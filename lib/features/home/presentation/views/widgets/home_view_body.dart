import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_listview_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        //next on, we have the featured list, which displays a list of featured books horizontally.
        //so a listview, good!
        //we start by building the unit item (list tile) first.
        CustomListViewItem(),
      ],
    );
  }
}
