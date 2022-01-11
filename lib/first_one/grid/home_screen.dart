import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grid_images/size_config.dart';
import 'package:grid_images/staggered/staggered.dart';

import 'components/facebook_effetc.dart';
import 'components/last_one.dart';
import 'components/nav_button.dart';

class PhotoGrid extends StatefulWidget {
  final int maxImages;
  final List<String> imageUrls;
  final Function(int) onImageClicked;
  final Function onExpandClicked;

  PhotoGrid({
    required this.imageUrls,
    required this.onImageClicked,
    required this.onExpandClicked,
    this.maxImages = 4,
    Key? key,
  }) : super(key: key);

  @override
  createState() => _PhotoGridState();
}

class _PhotoGridState extends State<PhotoGrid> {
  @override
  Widget build(BuildContext context) {
    var images = buildImages();
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(400),
              height: getProportionateScreenHeight(500),
              child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: getProportionateScreenWidth(200),
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                children: images,
              ),
            ),
            NavButton(),
          ],
        ),
      ),
    );
  }

  List<Widget> buildImages() {
    int numImages = widget.imageUrls.length;
    return List<Widget>.generate(min(numImages, widget.maxImages), (index) {
      String imageUrl = widget.imageUrls[index];

      // If its the last image
      if (index == widget.maxImages - 1) {
        // Check how many more images are left
        int remaining = numImages - widget.maxImages;

        // If no more are remaining return a simple image widget
        if (remaining == 0) {
          return LastOne(imageUrl: imageUrl);
        } else {
          // Create the facebook like effect for the last image with number of remaining  images
          return FacebookEffect(imageUrl: imageUrl, remaining: remaining);
        }
      } else {
        return GestureDetector(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          onTap: () => widget.onImageClicked(index),
        );
      }
    });
  }
}




