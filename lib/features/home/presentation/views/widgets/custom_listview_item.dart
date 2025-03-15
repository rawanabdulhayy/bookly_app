
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomFeaturedBooksListViewItem extends StatelessWidget {
  const CustomFeaturedBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/ 4,
      //aspect ratio completely ignores its child's dimensions.
      //aspect ratio is the width/height ratio.
      child: Container(
        //why a container and not just a direct image?
        //because different book images come in all widths and heights, so to unite them all, we need a container --with specific dimensions-- to hold them.
        // width: 150,
        // height: 200,
        //these heights work well for this media, but it ain't responsive at the end of the day, so what to do?
        // height: MediaQuery.of(context).size.height* .25,
        // width: 100,
        decoration: BoxDecoration(
          // image: DecorationImage(image: AssetsData.testImg),
          image: const DecorationImage(
            //goa el decoration image, I can control the fit I just checked for barra l decoration image w goa l box decoration.
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImg),
          ),
          color: Colors.red, //for debugging purposes to see how much space the picture holds.
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
