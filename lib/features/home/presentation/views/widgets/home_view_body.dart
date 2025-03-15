import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_listview_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        //next on, we have the featured list, which displays a list of featured books horizontally.
        //so a listview, good!
        //we start by building the unit item (list tile) first.

        // Expanded(child: FeaturedBooksListView()),
        //listview expands for as long as it needs to, so having a column parent not imposing dimensions constraints..
        //so all column children need to have their own dimensions..
        //so either constraint it or let expand be for as long as it needs (expanded widget).

        // How Expanded Works?
        // Expanded only works inside flexible widgets like Row, Column, or Flex.
        // It distributes available space among its siblings.
        // The child inside Expanded must have no width or height constraints (e.g., SizedBox(height: 100) inside Expanded will cause issues).

        //tayeb, law heya adheres to no children constraints, how can I force it to have the dimensions of the listview item?
        //needs a workaround, bas unfortunately won't be able to keep expanded.

        //1- removing the wrapping sizedbox for the listview item.
        //2- adding it (sizedbox with item's height) directly around the listview itself. (now can't use expanded)
        FeaturedBooksListView(),
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomFeaturedBooksListViewItem(),
            );
          }),
    );
  }
}
