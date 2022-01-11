import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:grid_images/size_config.dart';
import 'components/grid_case_four.dart';
import 'components/grid_case_four_with_more.dart';
import 'components/grid_case_three.dart';
import 'components/grid_case_two.dart';
import 'components/image_card_case.dart';

class Staggerd extends StatelessWidget {
  Staggerd({Key? key}) : super(key: key);
  List<String> imagesList = [
    "https://images.bunches.co.uk/products/large/1669-fpley-1.jpg",
    "https://pyxis.nymag.com/v1/imgs/431/405/f532d2de344840c6a151bc3a073a56af51-flowers.rsquare.w700.jpg",
    "https://media.urbanstems.com/image/upload/f_auto/w_900,c_fit,q_80/Catalogs/urbanstems-master/the-amethyst/Amethyst_Carousel.jpg",
    "https://media.urbanstems.com/image/upload/f_auto/w_900,c_fit,q_80/Catalogs/urbanstems-master/the-amethyst/Amethyst_Carousel.jpg",
    "https://cdn.shopify.com/s/files/1/0079/4984/4544/products/forever-in-love-bouquet_1024x.jpg?v=1544803760",
    // "https://cdn.shopify.com/s/files/1/0079/4984/4544/products/forever-in-love-bouquet_1024x.jpg?v=1544803760",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(8),
        width: getProportionateScreenWidth(500),
        height: getProportionateScreenHeight(500),
        child: getGrid(imagesList),
      ),
    );
  }
}

Widget getGrid(List<String> imagesList) {
  if (imagesList.isEmpty) {
    return Container();
  }
  if (imagesList.length == 1) {
    return ImageCardCase1(imagesList: imagesList, index: 0);
  } else if (imagesList.length == 2) {
    return StandardGridTwo(imagesList: imagesList);
  } else if (imagesList.length == 3) {
    return StandardGridThree(imagesList: imagesList);
  } else if (imagesList.length == 4) {
    return StandardGridFour(imagesList: imagesList);
  } else if (imagesList.length > 4 && imagesList.length < 6) {
    return StandardGridFourWithMore(imagesList: imagesList);
  }
  // else if  (imagesList.length >= 6) {
  //   return GridBaseTwo(imagesList: imagesList);
  // }
  return Container();
}
